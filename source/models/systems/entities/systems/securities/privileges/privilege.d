module models.systems.entities.systems.securities.privileges.privilege;

@safe:
import models.systems;

class DSystemSecurityPrivilegeEntity : DOOPEntity {
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