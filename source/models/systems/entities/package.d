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

  debug writeln("Create SystemLogin");
  login = createEntities["SystemLogin"](Json.emptyObject);
  writeln(login.toJson);

  debug writeln("Create login");
  login = createEntities["login"](Json.emptyObject);
  writeln(login.toJson);
} */

static this() {
  uimEntityRegistry
    .register(
      SystemAccount, SystemApp, SystemGroup, SystemLogin, SystemOrganization, SystemPassword, SystemPasswordRule, 
      SystemRequest, SystemRole, SystemRight, SystemSession, SystemSite, SystemTenant, SystemUser);
}