/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.securities.privileges.privilege;

@safe:
import models.systems;

class DSystemSecurityPrivilegeEntity : DEntity {
  mixin(EntityThis!("SystemSecurityPrivilegeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
      ])
      .registerPath("administration_system.securities.privileges");
  }
}
mixin(EntityCalls!("SystemSecurityPrivilegeEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityPrivilegeEntity);
  
    auto entity = SystemSecurityPrivilegeEntity;
  }
}