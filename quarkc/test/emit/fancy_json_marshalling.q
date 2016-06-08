quark *;
class Outliner {
    static String SPACES = "                                              ";
    String ind = "";
    List<int> levels = new List<int>();
    int nesting = 0;
    String str = "";
    Outliner() {
    }
    Outliner indent(int n) {
        ind = ind + SPACES.substring(0, n);
        if (nesting == levels.size()) {
            levels.add(n);
        } else {
            levels[nesting] = n;
        }
        nesting = nesting + 1;
        return self;
    }
    Outliner dedent() {
        nesting = nesting - 1;
        ind = ind.substring(levels[nesting],ind.size());
        return self;
    }
    Outliner l(String s) {
        str = str + ind + s + "\n";
        return self;
    }
}

class Conf {
    String org_id;
    Map<String, Org> orgs;
    Conf() {
        self.org_id = null;
        self.orgs = new Map<String,Org>();
    }

    Conf setOrgID(String id) {
        self.org_id = id;
        return self;
    }
    Conf org(String id, Org org) {
        self.orgs[id] = org;
        return self;
    }

    Outliner outline(Outliner o) {
        o.l("Conf " + org_id).indent(2);
        o.l("orgs");
        List<String> ids = orgs.keys();
        ids.sort();
        int i = 0;
        while (i < ids.size()) {
            String id = ids[i];
            orgs[id].outline(o.l("id: " + id).indent(2)).dedent();
            i = i + 1;
        }
        return o.dedent();
    }
}

class Org {
    String org_name;
    Map<String, String> service_tokens;
    Map<Service, Token> fancy_tokens; // these are hard to use in practice
    List<List<String>> orgchart; // matrix org :)

    Org() {
        self.org_name = null;
        self.service_tokens = new Map<String,String>();
        self.fancy_tokens = new Map<Service, Token>();
        self.orgchart = new List<List<String>>();
    }
    Org setName(String name) {
        self.org_name = name;
        return self;
    }
    Org token(String service, String token) {
        self.service_tokens[service] = token;
        return self;
    }
    Org fancy(Service service, Token token) {
        self.fancy_tokens[service] = token;
        return self;
    }
    Org position(int rowIdx, int colIdx, String name) {
        while(self.orgchart.size() <= rowIdx) {
            self.orgchart.add(new List<String>());
        }
        List<String> row = self.orgchart[rowIdx];
        while(row.size() <= colIdx) {
            row.add(null);
        }
        row[colIdx] = name;
        return self;
    }
    Outliner outline(Outliner o) {
        o.l("Org " + org_name).indent(2);
        o.l("service_tokens").indent(2);
        List<String> ids = service_tokens.keys();
        ids.sort();
        int i = 0;
        while (i < ids.size()) {
            String id = ids[i];
            o.l(id + " : " + service_tokens[id]);
            i = i + 1;
        }
        o.dedent().l("fancy_tokens").indent(2);
        List<Service> ids2_services = fancy_tokens.keys();
        List<String> ids2 = [];
        Map<String, Service> keymap = {};
        int i2_services = 0;
        while (i2_services < ids2_services.size()) {
            Service svc = ids2_services[i2_services];
            ids2.add(svc.name);
            keymap[svc.name] = svc;
            i2_services = i2_services + 1;
        }
        ids2.sort();
        int i2 = 0;
        while (i2 < ids2.size()) {
            Service id2 = keymap[ids2[i2]];
            id2.outline(o).l(":");
            fancy_tokens[id2].outline(o);
            i2 = i2 + 1;
        }
        o.dedent().l("orgchart").indent(2);
        int r = 0;
        while (r < orgchart.size()) {
            o.l("--").indent(2);
            int c = 0;
            while (c < orgchart[r].size()) {
                String p = orgchart[r][c];
                if (p == null) {
                    p = "~";
                }
                o.l("- " + p);
                c = c + 1;
            }
            o.dedent();
            r = r + 1;
        }
        o.dedent();
        return o.dedent();
    }
}

class Service {
    String name;
    Service setName(String name) {
        self.name = name;
        return self;
    }
    Outliner outline(Outliner o) {
        o.l("Service " + name).indent(2);
        return o.dedent();
    }
}

class Token {
    String token;
    Token setToken(String token) {
        self.token = token;
        return self;
    }
    Outliner outline(Outliner o) {
        o.l("Token " + token).indent(2);
        return o.dedent();
    }
}


Conf make() {
    return new Conf().setOrgID("myOrg")
        .org("org1", new Org().setName("name1")
             .token("svc1", "token1")
             .token("svc2", "token2")
             .fancy(new Service().setName("fancy1"),
                    new Token().setToken("fancy11"))
             .fancy(new Service().setName("fancy2"),
                    new Token().setToken("fancy22"))
             .position(4,2,"42")
             )
        .org("org2", new Org().setName("name2")
             .token("svc11", "token11")
             .token("svc22", "token22")
             .position(1,3,"13")
             );
}


void main(List<String> args) {
    Conf cexp = make();
    String expected = cexp.outline(new Outliner()).str;
    print(expected);
    String blob = toJSON(cexp, null).toString(); // get string representation of the JSON tree
     // String blob = toJSON(cexp, null);  // XXX: implicitly invokes .getString() returning null
    print(blob);
    Conf receptacle = new Conf();
    Object result = fromJSON(receptacle.getClass(), receptacle, blob.parseJSON());
    print(toJSON(receptacle, null).toString());
    String actual = receptacle.outline(new Outliner()).str;
    if (expected == actual) {
        print("OK!");
    } else {
        print("Fail!");
        print(actual);
    }
}
