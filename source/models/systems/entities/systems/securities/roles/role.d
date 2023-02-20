module models.systems.entities.systems.securities.roles.role;

@safe:
import models.systems;

// 
class DSystemSecurityRoleEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityRoleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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

version(test_model_systems) { unittest {
    assert(SystemSecurityRoleEntity);
  
    auto entity = SystemSecurityRoleEntity;
  }
}