/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.roles.role;

@safe:
import models.systems;

// 
class DSystemSecurityRoleEntity : DEntity {
  mixin(EntityThis!("SystemSecurityRoleEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "accessToSensitiveData": StringAttribute, // 
        "userLicenseType": StringAttribute, // 
        "contextString": StringAttribute, // 
      ])
      .registerPath("system_systems.securityroles")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemSecurityRoleEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityRoleEntity);
  
    auto entity = SystemSecurityRoleEntity;
  }
}