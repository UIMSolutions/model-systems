module models.systems.entities.systems.securities.privileges.customization;

@safe:
import models.systems;

// 
class DSystemSecurityPrivilegeCustomizationEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityPrivilegeCustomizationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "xmlObject": StringAttribute, // 
        "isDisabled": BooleanAttribute, // 
      ])
      .registerPath("administration_system.securities.privilegecustomizations");
  }
}
mixin(EntityCalls!("SystemSecurityPrivilegeCustomizationEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityPrivilegeCustomizationEntity);
  
    auto entity = SystemSecurityPrivilegeCustomizationEntity;
  }
}