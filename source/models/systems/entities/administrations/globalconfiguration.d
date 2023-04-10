/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.globalconfiguration;

@safe:
import models.systems;

// System level configurations
class DSystemGlobalConfigurationEntity : DEntity {
  mixin(EntityThis!("SystemGlobalConfigurationEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "aosInstanceName": StringAttribute, // 
        "settingLevel": StringAttribute, // 
        "value": StringAttribute, // 
      ])
      .registerPath("system_globalconfigurations")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemGlobalConfigurationEntity"));

version(test_model_systsms) { unittest {
    assert(SystemGlobalConfigurationEntity);
  
    auto entity = SystemGlobalConfigurationEntity;
  }
}