module models.systems.entities.systems.globalconfiguration;

@safe:
import models.systems;

// System level configurations
class DSystemGlobalConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("SystemGlobalConfigurationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "aosInstanceName": StringAttribute, // 
        "settingLevel": StringAttribute, // 
        "value": StringAttribute, // 
      ])
      .registerPath("administration_globalconfigurations");
  }
}
mixin(EntityCalls!("SystemGlobalConfigurationEntity"));

version(test_model_systsms) { unittest {
    assert(SystemGlobalConfigurationEntity);
  
    auto entity = SystemGlobalConfigurationEntity;
  }
}