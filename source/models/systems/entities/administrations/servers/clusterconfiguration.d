/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.servers.clusterconfiguration;

@safe:
import models.systems;

// 
class DSystemServerClusterConfigurationEntity : DEntity {
  mixin(EntityThis!("SystemServerClusterConfigurationEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "backingTable_SysClusterConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_systems.serverclusterconfigurations")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemServerClusterConfigurationEntity"));

version(test_model_systsms) { unittest {
    assert(SystemServerClusterConfigurationEntity);
  
    auto entity = SystemServerClusterConfigurationEntity;
  }
}
