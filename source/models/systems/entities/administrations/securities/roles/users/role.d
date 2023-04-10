/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.roles.users.role;

@safe:
import models.systems;

// 
class DSystemSecurityUserRoleEntity : DEntity {
  mixin(EntityThis!("SystemSecurityUserRoleEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "accessToSensitiveData": StringAttribute, // 
        "userLicenseType": StringAttribute, // 
        "assignmentMode":		StringAttribute, //
        "assignmentStatus":		StringAttribute, //
        "securityRole":		StringAttribute, //
        "userId": UUIDAttribute, //
      ])
      .registerPath("system_system.securities.userroles")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemSecurityUserRoleEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityUserRoleEntity);
  
  auto entity = SystemSecurityUserRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}