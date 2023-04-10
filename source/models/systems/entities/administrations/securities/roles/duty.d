/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.roles.duty;

@safe:
import models.systems;

// 
class DSystemSecurityRoleDutyEntity : DEntity {
  mixin(EntityThis!("SystemSecurityRoleDutyEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
      ])
      .registerPath("system_systems.securities.roleduties")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemSecurityRoleDutyEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityRoleDutyEntity);
  
    auto entity = SystemSecurityRoleDutyEntity;
  }
}