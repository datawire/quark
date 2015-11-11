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


import org.apache.maven.plugin.MojoExecutionException;

/**
 * A quark version is something like major.minor.revision. For example, if
 * the version is 2.4.1, major = 2, minor = 4, revision = 1.
 * 
 */
public class QuarkVersion {

    public static enum VersionValidationStrategy {
        major, // Only validate the major part. If the major parts of two
               // versions are same, they pass the validation.
        minor, // Validate the major and minor parts. If the major and minor
               // parts of two versions are same, they pass the validation.
        all; // Validate if two versions are same.

        public static VersionValidationStrategy fromString(String strategy)
                throws MojoExecutionException {
            if (strategy.equals(major.name())) {
                return major;
            }
            if (strategy.equals(minor.name())) {
                return minor;
            }
            if (strategy.equals(all.name())) {
                return all;
            }
            throw new MojoExecutionException(
                    "Unrecognized quark version validation strategy: "
                            + strategy);
        }
    }

    private String major;
    private String minor;
    private String revision;

    public QuarkVersion(String version) throws MojoExecutionException {
        String[] splits = version.split("\\.", 3);
        if (splits.length == 3) {
            major = splits[0];
            minor = splits[1];
            revision = splits[2];
        } else if (splits.length == 2) {
            major = splits[0];
            minor = splits[1];
            revision = "";
        } else if (splits.length == 1) {
            major = splits[0];
            minor = "";
            revision = "";
        } else {
            throw new MojoExecutionException("Unrecognized quark version: "
                    + version);
        }
    }

    public String getMajor() {
        return major;
    }

    public String getMinor() {
        return minor;
    }

    public String getRest() {
        return revision;
    }

    @Override
    public String toString() {
        return major + "." + minor + "." + revision;
    }

    public static boolean validate(VersionValidationStrategy strategy,
            QuarkVersion v1, QuarkVersion v2) throws MojoExecutionException {
        switch (strategy) {
        case major:
            return v1.major.equals(v2.major);
        case minor:
            return v1.major.equals(v2.major) && v1.minor.equals(v2.minor);
        case all:
            return v1.major.equals(v2.major) && v1.minor.equals(v2.minor)
                    && v1.revision.equals(v2.revision);
        }
        throw new MojoExecutionException(
                "Unrecognized quark version validation strategy: "
                        + strategy);
    }

}
