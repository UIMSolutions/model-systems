/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.securities.permission;

@safe:
import models.systems;

// 
class DSystemSecurityPermissionEntity : DEntity {
  mixin(EntityThis!("SystemSecurityPermissionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "securityRoleId": UUIDAttribute, //
        "securityRoleName": StringAttribute, //
        "userLicenseType": StringAttribute, //
        "resourceName": StringAttribute, //
        "resourceType": StringAttribute, //
        "createAccess": StringAttribute, //
        "readAccess": StringAttribute, //
        "updateAccess": StringAttribute, //
        "deleteAccess": StringAttribute, //
        "invokeAccess": StringAttribute, //
        "correctAccess": StringAttribute, //	
      ])
      .registerPath("administration_systems.securities.permissions");
  }
}
mixin(EntityCalls!("SystemSecurityPermissionEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityPermissionEntity);
  
    auto entity = SystemSecurityPermissionEntity;
  }
}