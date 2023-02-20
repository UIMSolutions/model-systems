module models.systems.entities.systems.securities.roles.duty;

@safe:
import models.systems;

// 
class DSystemSecurityRoleDutyEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityRoleDutyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
      ])
      .registerPath("administration_systems.securities.roleduties");
  }
}
mixin(EntityCalls!("SystemSecurityRoleDutyEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityRoleDutyEntity);
  
    auto entity = SystemSecurityRoleDutyEntity;
  }
}