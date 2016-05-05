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
}

class Service {
    String name;
    Service setName(String name) {
        self.name = name;
        return self;
    }
}

class Token {
    String token;
    Token setToken(String token) {
        self.token = token;
        return self;
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
    String blob = toJSON(cexp, null).toString(); // get string representation of the JSON tree
     // String blob = toJSON(cexp, null);  // XXX: implicitly invokes .getString() returning null
    print(blob);
    Conf receptacle = new Conf();
    Object result = fromJSON(receptacle.getClass(), receptacle, blob.parseJSON());
    String blob2 = toJSON(receptacle, null).toString();
    print(blob2);
    if (blob == blob2) {
        print("OK!");
    } else {
        print("FAIL");
    }
}
