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
    .register("system/accounts", SYSAccount)
    .register("system/apps", SYSApp)
    .register("system/groups", SYSGroup)
    .register("system/logins", SYSLogin)
    .register("system/organizations", SYSOrganization)
    .register("system/passwords", SYSPassword)
    .register("system/passwordRules", SYSPasswordRule)
    .register("system/requests", SYSRequest)
    .register("system/roles", SYSRole)
    .register("system/rights", SYSRight)
    .register("system/sessions", SYSSession)
    .register("system/sites", SYSSite)
    .register("system/tenants", SYSTenant)
    .register("system/users", SYSUser);
}