/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.privileges.privilege;

@safe:
import models.systems;

class DSystemSecurityPrivilegeEntity : DEntity {
  mixin(EntityThis!("SystemSecurityPrivilegeEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
      ])
      .registerPath("system_system.securities.privileges")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemSecurityPrivilegeEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityPrivilegeEntity);
  
    auto entity = SystemSecurityPrivilegeEntity;
  }
}