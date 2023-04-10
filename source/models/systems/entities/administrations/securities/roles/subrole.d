/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.roles.subrole;

@safe:
import models.systems;

// 
class DSystemSecuritySubRoleEntity : DEntity {
  mixin(EntityThis!("SystemSecuritySubRoleEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securitySubRoleId": UUIDAttribute, // 
        "securitySubRoleName": StringAttribute, // 
      ])
      .registerPath("system_system.securities.subroles")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemSecuritySubRoleEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecuritySubRoleEntity);
  
    auto entity = SystemSecuritySubRoleEntity;
  }
}