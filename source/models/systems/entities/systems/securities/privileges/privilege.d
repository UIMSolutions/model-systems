module models.systems.entities.systems.securities.privileges.privilege;

@safe:
import models.systems;

class DSystemSecurityPrivilegeEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityPrivilegeEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
      ])
      .registerPath("administration_system.securities.privileges");
  }
}
mixin(EntityCalls!("SystemSecurityPrivilegeEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityPrivilegeEntity);
  
    auto entity = SystemSecurityPrivilegeEntity;
  }
}