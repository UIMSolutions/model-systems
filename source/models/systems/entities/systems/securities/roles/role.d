module models.systems.entities.systems.securities.roles.role;

@safe:
import models.systems;

// 
class DSystemSecurityRoleEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityRoleEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "accessToSensitiveData": StringAttribute, // 
        "userLicenseType": StringAttribute, // 
        "contextString": StringAttribute, // 
      ])
      .registerPath("administration_systems.securityroles");
  }
}
mixin(EntityCalls!("SystemSecurityRoleEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityRoleEntity);
  
    auto entity = SystemSecurityRoleEntity;
  }
}