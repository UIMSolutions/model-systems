/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.securities.roles.subrole;

@safe:
import models.systems;

// 
class DSystemSecuritySubRoleEntity : DEntity {
  mixin(EntityThis!("SystemSecuritySubRoleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securitySubRoleId": UUIDAttribute, // 
        "securitySubRoleName": StringAttribute, // 
      ])
      .registerPath("administration_system.securities.subroles");
  }
}
mixin(EntityCalls!("SystemSecuritySubRoleEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecuritySubRoleEntity);
  
    auto entity = SystemSecuritySubRoleEntity;
  }
}