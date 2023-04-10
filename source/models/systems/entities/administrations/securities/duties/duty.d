/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.duties.duty;

@safe:
import models.systems;

class DSystemSecurityDutyEntity : DEntity {
  mixin(EntityThis!("SystemSecurityDutyEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilege": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
        "backingTable_SecurityRoleDutyPrivilegeExplodedGraphRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_system.securities.duties")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemSecurityDutyEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityDutyEntity);
  
    auto entity = SystemSecurityDutyEntity;
  }
}