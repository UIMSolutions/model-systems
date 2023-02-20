module models.systems.entities.systems.securities.roles.subrole;

@safe:
import models.systems;

// 
class DSystemSecuritySubRoleEntity : DOOPEntity {
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

version(test_library) {
  unittest {
    assert(SystemSecuritySubRoleEntity);
  
    auto entity = SystemSecuritySubRoleEntity;
  }
}