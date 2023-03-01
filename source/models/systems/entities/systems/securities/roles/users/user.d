/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.securities.roles.users.user;

@safe:
import models.systems;

// 
class DADMSecurityUserRole : DEntity {
  mixin(EntityThis!("ADMSecurityUserRole"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "AssignmentMode": StringAttribute, // 
        "AssignmentStatus": StringAttribute, // 
        "SecurityRole": StringAttribute, // 
        "UserId": UUIDAttribute, // 
        "SecurityRoleId": UUIDAttribute, // 
        "SecurityRoleName": StringAttribute, // 
        "UserLicenseType": StringAttribute, // 
      ])
      .registerPath("administration_securityuserroles");
  }
}
mixin(EntityCalls!("ADMSecurityUserRole"));

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