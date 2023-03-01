/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.securities.roles.users.association;

@safe:
import models.systems;

class DSystemSecurityUserRoleAssociationEntity : DEntity {
  mixin(EntityThis!("SystemSecurityUserRoleAssociationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "assignmentMode": StringAttribute, // 
        "assignmentStatus": StringAttribute, // 
        "securityRole": StringAttribute, // 
        "userId": UUIDAttribute, // 
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
      ])
      .registerPath("administration_system.securities.userrole.associations");
  }
}
mixin(EntityCalls!("SystemSecurityUserRoleAssociationEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityUserRoleAssociationEntity);
  
    auto entity = SystemSecurityUserRoleAssociationEntity;
  }
}