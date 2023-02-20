module models.systems.entities.systems.securities.permission;

@safe:
import models.systems;

// 
class DSystemSecurityPermissionEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityPermissionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
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

version(test_library) {
  unittest {
    assert(SystemSecurityPermissionEntity);
  
    auto entity = SystemSecurityPermissionEntity;
  }
}