module models.systems.entities.systems.securities.roles.customization;

@safe:
import models.systems;

// 
class DSystemSecurityRoleCustomizationsEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityRoleCustomizationsEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "xmlObject": StringAttribute, // 
        "isDisabled": BooleanAttribute, // 
      ])
      .registerPath("administration_system.securities.rolecustomizations");
  }
}
mixin(EntityCalls!("SystemSecurityRoleCustomizationsEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityRoleCustomizationsEntity);
  
    auto entity = SystemSecurityRoleCustomizationsEntity;
  }
}