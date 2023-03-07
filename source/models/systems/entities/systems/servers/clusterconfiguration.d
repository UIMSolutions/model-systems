/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.servers.clusterconfiguration;

@safe:
import models.systems;

// 
class DSystemServerClusterConfigurationEntity : DEntity {
  mixin(EntityThis!("SystemServerClusterConfigurationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "backingTable_SysClusterConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.serverclusterconfigurations");
  }
}
mixin(EntityCalls!("SystemServerClusterConfigurationEntity"));

version(test_model_systsms) { unittest {
    assert(SystemServerClusterConfigurationEntity);
  
    auto entity = SystemServerClusterConfigurationEntity;
  }
}
