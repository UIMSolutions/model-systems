/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities;

public { // Subpackages
  import models.systems.entities.administrations;
  import models.systems.entities.organizations;
  import models.systems.entities.workflows;
}

// Submodules
public import models.systems.entities.bidategregorian;
// public import models.systems.entities.emailparameters;
// public import models.systems.entities.globalconfiguration;
// public import models.systems.entities.parameter;

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
/*   EntityRegistry
    .register(
      SystemAccountEntity, SystemAppEntity, SystemGroupEntity, SystemLoginEntity, SystemOrganizationEntity, SystemPasswordEntity, SystemPasswordRuleEntity, 
      SystemRequestEntity, SystemRoleEntity, SystemRightEntity, SystemSessionEntity, SystemSiteEntity, SystemTenantEntity, SystemUserEntity); */
}