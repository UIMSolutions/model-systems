module models.systems.entities.systems.securities.roles.subrole;

@safe:
import models.systems;

// 
class DSystemSecuritySubRoleEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecuritySubRoleEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
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