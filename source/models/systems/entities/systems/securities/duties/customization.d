module models.systems.entities.systems.securities.duties.customization;

@safe:
import models.systems;

class DSystemSecurityDutyCustomizationEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityDutyCustomizationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "xmlObject": StringAttribute, // 
        "isDisabled	": BooleanAttribute, // 
      ])
      .registerPath("administration_system.securities.dutycustomizations");
  }
}
mixin(EntityCalls!("SystemSecurityDutyCustomizationEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityDutyCustomizationEntity);
  
    auto entity = SystemSecurityDutyCustomizationEntity;
  }
}