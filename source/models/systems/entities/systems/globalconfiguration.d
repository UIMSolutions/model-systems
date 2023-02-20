module models.systems.entities.systems.globalconfiguration;

@safe:
import models.systems;

// System level configurations
class DSystemGlobalConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("SystemGlobalConfigurationEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "aosInstanceName": StringAttribute, // 
        "settingLevel": StringAttribute, // 
        "value": StringAttribute, // 
      ])
      .registerPath("administration_globalconfigurations");
  }
}
mixin(EntityCalls!("SystemGlobalConfigurationEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemGlobalConfigurationEntity);
  
    auto entity = SystemGlobalConfigurationEntity;
  }
}