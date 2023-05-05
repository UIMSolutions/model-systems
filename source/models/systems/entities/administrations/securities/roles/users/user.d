/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.roles.users.user;

@safe:
import models.systems;

// 
class DSystemSecurityUserRole : DEntity {
  mixin(EntityThis!("SystemSecurityUserRole"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "AssignmentMode": StringAttribute, // 
        "AssignmentStatus": StringAttribute, // 
        "SecurityRole": StringAttribute, // 
        "UserId": UUIDAttribute, // 
        "SecurityRoleId": UUIDAttribute, // 
        "SecurityRoleName": StringAttribute, // 
        "UserLicenseType": StringAttribute, // 
      ])
      .registerPath("system_securityuserroles")      
      .routingPath("/systems/administrations/securityuserroles");
  }
}
mixin(EntityCalls!("SystemSecurityUserRole"));

version(test_model_systems) { unittest {
    assert(ADMSecurityUserRole);
  
  auto entity = ADMSecurityUserRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}