/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.roles.users.association;

@safe:
import models.systems;

class DSystemSecurityUserRoleAssociationEntity : DEntity {
  mixin(EntityThis!("SystemSecurityUserRoleAssociationEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "assignmentMode": StringAttribute, // 
        "assignmentStatus": StringAttribute, // 
        "securityRole": StringAttribute, // 
        "userId": UUIDAttribute, // 
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
      ])
      .registerPath("system_system.securities.userrole.associations")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemSecurityUserRoleAssociationEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityUserRoleAssociationEntity);
  
    auto entity = SystemSecurityUserRoleAssociationEntity;
  }
}