module models.systems.entities;

@safe:
import models.systems;

public import models.systems.entities.account;
public import models.systems.entities.app;
public import models.systems.entities.group;
public import models.systems.entities.login;
public import models.systems.entities.organization;
public import models.systems.entities.password;
public import models.systems.entities.passwordrule;
public import models.systems.entities.request;
public import models.systems.entities.right;
public import models.systems.entities.role;
public import models.systems.entities.right;
public import models.systems.entities.session;
public import models.systems.entities.site;
public import models.systems.entities.tenant;
public import models.systems.entities.user; 

/* unittest {
  debug writeln("Create models.systems.security.login");
  auto login = createEntities["models.systems.security.login"](Json.emptyObject);
  writeln(login.toJson);

  debug writeln("Create SYSLogin");
  login = createEntities["SYSLogin"](Json.emptyObject);
  writeln(login.toJson);

  debug writeln("Create login");
  login = createEntities["login"](Json.emptyObject);
  writeln(login.toJson);
} */

static this() {
  uimRegistryEntities
    .register("SYSAccount", SYSAccount)
    .register("systems/accounts", SYSAccount)
    .register("SYSApp", SYSApp)
    .register("systems/apps", SYSApp)
    .register("SYSGroup", SYSGroup)
    .register("systems/groups", SYSGroup)
    .register("SYSLogin", SYSLogin)
    .register("systems/logins", SYSLogin)
    .register("SYSOrganization", SYSOrganization)
    .register("systems/organizations", SYSOrganization)
    .register("SYSPassword", SYSPassword)
    .register("systems/passwords", SYSPassword)
    .register("SYSPasswordRule", SYSPasswordRule)
    .register("systems/passwordRules", SYSPasswordRule)
    .register("SYSRequest", SYSRequest)
    .register("systems/requests", SYSRequest)
    .register("SYSRole", SYSRole)
    .register("systems/roles", SYSRole)
    .register("SYSRight", SYSRight)
    .register("systems/rights", SYSRight)
    .register("SYSSession", SYSSession)
    .register("systems/sessions", SYSSession)
    .register("SYSSite", SYSSite)
    .register("systems/sites", SYSSite)
    .register("SYSTenant", SYSTenant)
    .register("systems/tenants", SYSTenant)
    .register("SYSUser", SYSUser)
    .register("systems/users", SYSUser);
}