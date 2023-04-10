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

public { // Entities packages
  import models.systems.entities.account;
  import models.systems.entities.app;
  import models.systems.entities.bidategregorian;
  import models.systems.entities.cityholiday;
  import models.systems.entities.demodatapost;
  import models.systems.entities.dirpartycds;
  import models.systems.entities.ecoresproductcdscategoryassignment;
  import models.systems.entities.efdocemailaccountconfiguration;
  import models.systems.entities.group;
  import models.systems.entities.gbtparameter;
  import models.systems.entities.login;
  import models.systems.entities.organization;
  import models.systems.entities.parameter;
  import models.systems.entities.password;
  import models.systems.entities.passwordrule;
  import models.systems.entities.request;
  import models.systems.entities.right;
  import models.systems.entities.role;
  import models.systems.entities.right;
  import models.systems.entities.session;
  import models.systems.entities.site;
  import models.systems.entities.tenant;
  import models.systems.entities.user; 
}

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

