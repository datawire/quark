/*
 * Copyright 2015, by Datawire
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


package io.datawire.quark.maven.plugin;

import org.apache.maven.artifact.Artifact;
import org.apache.maven.artifact.factory.ArtifactFactory;
import org.apache.maven.artifact.metadata.ArtifactMetadataSource;
import org.apache.maven.artifact.repository.ArtifactRepository;
import org.apache.maven.artifact.resolver.ArtifactCollector;
import org.apache.maven.artifact.resolver.filter.ArtifactFilter;
import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.plugins.annotations.Component;
import org.apache.maven.plugins.annotations.LifecyclePhase;
import org.apache.maven.plugins.annotations.Mojo;
import org.apache.maven.plugins.annotations.Parameter;
import org.apache.maven.plugins.annotations.ResolutionScope;
import org.apache.maven.project.MavenProject;
import org.apache.maven.shared.dependency.tree.DependencyNode;
import org.apache.maven.shared.dependency.tree.DependencyTreeBuilder;
import org.apache.maven.shared.dependency.tree.DependencyTreeBuilderException;
import org.codehaus.plexus.util.FileUtils;
import org.sonatype.plexus.build.incremental.BuildContext;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Scanner;

@Mojo(name="run",
defaultPhase=LifecyclePhase.GENERATE_SOURCES,
requiresDependencyResolution=ResolutionScope.RUNTIME)
public class RunMojo extends AbstractMojo {

    private static final String DEFAULT_INPUT_DIR= "/src/main/quark/".replace('/',File.separatorChar);
    private static final String VERSION_KEY="--version";

    /**
     * The Maven project.
     */
    @Parameter(property="project", required=true, readonly=true)
    private MavenProject project;

    /**
     * The artifact repository to use.
     */
    @Parameter(property="localRepository", required=true, readonly=true)
    private ArtifactRepository localRepository;

    /**
     * The artifact factory to use.
     */
    @Component
    private ArtifactFactory artifactFactory;

    /**
     * The artifact metadata source to use.
     */
    @Component
    private ArtifactMetadataSource artifactMetadataSource;

    /**
     * The artifact collector to use.
     */
    @Component
    private ArtifactCollector artifactCollector;

    /**
     * The dependency tree builder to use.
     *
     */
    @Component
    private DependencyTreeBuilder dependencyTreeBuilder;

    @Component
    private BuildContext buildContext;

    /**
     * Input directories that have *.q files (or the configured extension).
     * If none specified then <b>src/main/quark</b> is used.
     */
    @Parameter(property="inputDirectories")
    private File[] inputDirectories;

    /**
     * This parameter lets you specify additional include paths to quark.
     */
    @Parameter(property="includeDirectories")
    private File[] includeDirectories;

    /**
     * If this parameter is set to "true" output folder is cleaned prior to build.
     * This will not let old and new classes coexist after package or class
     * rename in your IDE cache or after non-clean rebuild.
     * Set this to "false" if you are doing multiple plugin invocations per build
     * and it is important to preserve output folder contents
     */
    @Parameter(property="cleanOutputFolder", defaultValue="true", required=true)
    private boolean cleanOutputFolder;

    /**
     * Specifies a mode for plugin whether it should
     * add outputDirectory to sources that are going to be compiled
     * Can be "main", "test" or "none"
     */
    @Parameter(property="addSources", required=true, defaultValue="main")
    private String addSources;

    /**
     * Output directory, that generated java files would be stored
     * Defaults to "${project.build.directory}/generated-sources/quark"
     * or "${project.build.directory}/generated-test-sources/quark" depending
     * addSources parameter
     */
    @Parameter(property="outputDirectory")
    private File outputDirectory;

    /**
     * Default extension for quark files
     */
    @Parameter(property="extension", defaultValue=".q", required=true)
    private String extension;

    /**
     * Setting to "true" disables version check between 'quark' and the quark runtimelibrary used by module
     */
    @Parameter(property="ignoreVersions", defaultValue="false", required=true)
    private boolean ignoreVersions;

    /**
     * Setting to "true" allows quark to output as JavaScript
     */
    @Parameter(property="jsOutput", defaultValue="false", required=true)
    private boolean jsOutput;

    /**
     * Setting to "true" allows quark to output as java.
     */
    @Parameter(property="javaOutput", defaultValue="true", required=true)
    private boolean javaOutput;

    /**
     * Setting to "true" allows quark to output as python.
     */
    @Parameter(property="pythonOutput", defaultValue="false", required=true)
    private boolean pythonOutput;

    /**
     * This parameter allows to override the quark command that is going to be used.
     */
    @Parameter(property="quarkCommand", defaultValue="quark")
    private String quarkCommand;

    /**
     * This parameter allows to override quark runtime library groupId
     */
    @Parameter(property="quarkGroupId", defaultValue="io.datawire.quark")
    private String quarkGroupId;

    /**
     * This parameter allows to override quark runtime library artifactId
     */
    @Parameter(property="quarkArtifactId", defaultValue="quark-core")
    private String quarkArtifactId;

    /**
     * This parameter allows to specify how to validate the quark version.
     * <ul>
     * <li>
     * major: Only validate the major part. If the major parts of two versions
     * are same, they pass the validation.</li>
     * <li>minor: Validate the major and minor parts. If the major and minor
     * parts of two versions are same, they pass the validation.</li>
     * <li>all: Validate if two versions are same.</li>
     * </ul>
     * 
     */
    @Parameter(property="quarkVersionValidationStrategy", defaultValue="minor")
    private String quarkVersionValidationStrategy;

    public void execute() throws MojoExecutionException
    {
        if (project.getPackaging()!=null &&
                "pom".equals(project.getPackaging().toLowerCase())){
            getLog().info("Skipping 'pom' packaged project");
            return;
        }
        String dependencyVersion = getQuarkRuntimeVersion();
        getLog().info("Quark runtime dependency version " + dependencyVersion);
        String executableVersion = detectQuarkCompilerVersion();
        if (executableVersion==null){
            throw new MojoExecutionException("Unable to find '"+quarkCommand+"'");
        }
        getLog().info("'quark' executable version "+executableVersion);
        if (!ignoreVersions){
            if (dependencyVersion==null){
                throw new MojoExecutionException("Quark runtime library dependency not found in pom: "+quarkGroupId+":" +quarkArtifactId);
            }
            QuarkVersion.VersionValidationStrategy strategy = QuarkVersion.VersionValidationStrategy
                    .fromString(quarkVersionValidationStrategy);
            if (!QuarkVersion.validate(strategy, new QuarkVersion(
                    dependencyVersion), new QuarkVersion(executableVersion))) {
                throw new MojoExecutionException("Quark compiler version does not match Quark runtime library version");
            }
        }
        // Compatablity measures
        addSources = addSources.toLowerCase().trim();
        if ("true".equals(addSources)){
            addSources = "main";
        }

        if (outputDirectory==null){
            String subdir = "generated-"+("test".equals(addSources)?"test-":"")+"sources";
            outputDirectory = new File(project.getBuild().getDirectory()
                    + File.separator + subdir
                    + File.separator + "quark"
                    + File.separator);
        }

        performQuarkCompilation();
    }

    private void performQuarkCompilation() throws MojoExecutionException{
        if (includeDirectories!=null && includeDirectories.length>0){
            getLog().info("Include directories:");
            for (File include: includeDirectories){
                getLog().info("    "+include);
            }
        }
        getLog().info("Input directories:");
        for (File input: inputDirectories){
            getLog().info("    "+input);
        }
        if (includeDirectories==null || inputDirectories.length==0){
            File inputDir = new File(project.getBasedir().getAbsolutePath() + DEFAULT_INPUT_DIR);
            getLog().info("    "+inputDir+" (using default)");
            inputDirectories = new File[]{inputDir};
        }

        getLog().info("Output directory: "+outputDirectory);
        File f = outputDirectory;
        if ( !f.exists() )
        {
            getLog().info(f+" does not exist. Creating...");
            f.mkdirs();
        }
        if (cleanOutputFolder){
            try {
                getLog().info("Cleaning "+f);
                FileUtils.cleanDirectory(f);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        final QuarkFileFilter QUARK_FILTER = new QuarkFileFilter(extension);

        for (File input: inputDirectories){
            if (input==null){
                continue;
            }
            getLog().info("Directory "+input);
            if (input.exists() && input.isDirectory()){
                File[] files = input.listFiles(QUARK_FILTER);
                for (File file: files){
                    if (cleanOutputFolder || buildContext.hasDelta(file.getPath())){
                        processFile(file, outputDirectory);
                    }else{
                        getLog().info("Not changed "+file);
                    }
                }
            }else{
                if (input.exists())
                    getLog().warn(input+" is not a directory");
                else
                    getLog().warn(input+" does not exist");
            }
        }
        boolean mainAddSources = "main".endsWith(addSources);
        boolean testAddSources = "test".endsWith(addSources);
        File realOutDir = outputDirectory.toPath().resolve("src").resolve("main").resolve("java").toFile();
        String absOutDir = realOutDir.getAbsolutePath();
        if (mainAddSources){
            getLog().info("Adding generated classes to classpath " + absOutDir);
            project.addCompileSourceRoot( absOutDir);
        }
        if (testAddSources){
            getLog().info("Adding generated classes to test classpath" + absOutDir);
            project.addTestCompileSourceRoot( absOutDir);
        }
        if (mainAddSources || testAddSources){
            buildContext.refresh(outputDirectory);
        }
    }

    private void processFile(File file, File outputDir) throws MojoExecutionException{
        getLog().info("    Processing "+file.getName());
        Collection<String> cmd = buildCommand(file, outputDir);
        try {
            Process process = execProcess(cmd.toArray(new String[0]));
            if (process.waitFor() != 0) {
                printErrorAndThrow(process, " for " + file);
            }
        }catch (InterruptedException e){
            throw new MojoExecutionException("Interrupted",e);
        } catch (IOException e) {
            throw new MojoExecutionException("Unable to execute quark for "+file, e);
        }
    }

    private Collection<String> buildCommand(File file, File outputDir) throws MojoExecutionException {
        Collection<String> cmd = new LinkedList<String>();
        cmd.add(quarkCommand);
        populateIncludes(cmd);
        // cmd.add("-I" + file.getParentFile().getAbsolutePath());
        cmd.add("--output=" + outputDir);
        if (javaOutput) {
            cmd.add("--java");
            cmd.add("--java-out=.");
        }
        cmd.add("compile");
        cmd.add(file.toString());
        return cmd;
    }

    private void populateIncludes(Collection<String> args) throws MojoExecutionException {
        for (File include : includeDirectories) {
            if (!include.exists())
                throw new MojoExecutionException("Include path '" + include.getPath() + "' does not exist");
            if (!include.isDirectory())
                throw new MojoExecutionException("Include path '" + include.getPath() + "' is not a directory");
            args.add("-I" + include.getPath());
        }
    }

    private String getQuarkRuntimeVersion() throws MojoExecutionException{
        try {
            ArtifactFilter artifactFilter = null;
            DependencyNode node = dependencyTreeBuilder.buildDependencyTree(project,localRepository,
                    artifactFactory,
                    artifactMetadataSource,
                    artifactFilter,
                    artifactCollector
                    );
            String version = traverseNode(node);
            if (version == null) {
                getLog().error("Cannot find dependency " + this.quarkGroupId + ":" + quarkArtifactId);
                throw new MojoExecutionException("missing project dependency");
            }
            return version;

        } catch (DependencyTreeBuilderException e) {
            throw new MojoExecutionException("Unable to traverse dependency tree", e);
        }
    }

    private String detectQuarkCompilerVersion() throws MojoExecutionException {
        try {
            String[] versionCommand = quarkVersionCommand();
            Process process = execProcess(versionCommand);

            if (process.waitFor() != 0) {
                printErrorAndThrow(process);
            } else {
                Scanner scanner = new Scanner(process.getInputStream());
                try {
                    String[] version = scanner.nextLine().split(" ");
                    return version[1];
                } finally {
                    scanner.close();
                }
            }
        } catch (IOException e) {
            throw new MojoExecutionException("Cannot execute '" + quarkCommand + "'", e);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }

        return null;
    }

    private Process execProcess(String[] command) throws IOException {
        Runtime runtime = Runtime.getRuntime();
        StringBuilder b = new StringBuilder();
        b.append("Executing ").append(command[0]);
        for (int i = 1; i < command.length; i++) {
            b.append(" ").append(command[i]);
        }
        getLog().info(b.toString());
        Process process = runtime.exec(command);
        return process;
    }

    private String[] quarkVersionCommand() {
        return new String[]{quarkCommand, VERSION_KEY};
    }

    private void printErrorAndThrow(Process process, String exceptionMessage) throws MojoExecutionException {
        Scanner scanner = new Scanner(process.getErrorStream());
        try {
            while (scanner.hasNextLine()) {
                getLog().error("    " + scanner.nextLine());
            }
        } finally {
            scanner.close();
        }
        throw new MojoExecutionException("'quark' failed" + exceptionMessage + ". Exit code " + process.exitValue());
    }

    private void printErrorAndThrow(Process process) throws MojoExecutionException {
        printErrorAndThrow(process, "");
    }

    private String traverseNode(DependencyNode node) {
        Artifact artifact = node.getArtifact();
        if ((quarkGroupId.equals(artifact.getGroupId())
                && (quarkArtifactId.equals(artifact.getArtifactId())))){
            return artifact.getVersion();
        }
        for (Object o: node.getChildren()){
            DependencyNode child = (DependencyNode)o;
            String result = traverseNode(child);
            if (result!=null)
                return result;
        }
        return null;
    }
}
