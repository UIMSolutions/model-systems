/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.servers.configuration;

@safe:
import models.systems;

// 
class DSystemServerConfigurationEntity : DEntity {
  mixin(EntityThis!("SystemServerConfigurationEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "aosInstanceName": StringAttribute, // 
        "azureDeploymentId": UUIDAttribute, // 
        "referenceToAClusterName": StringAttribute, // 
        "isBatchServer": StringAttribute, // 
        "isRoleIdle": StringAttribute, // 
        "loadBalancer": StringAttribute, // 
        "maxConcurrentSessions": StringAttribute, // 
        "serverGUID": StringAttribute, // 
        "timeAlive": StringAttribute, // 
        "clusterName": StringAttribute, // 
        "backingTable_SysServerConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_systems.serversconfigurations")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemServerConfigurationEntity"));

version(test_model_systsms) { unittest {
    assert(SystemServerConfigurationEntity);
  
  auto entity = SystemServerConfigurationEntity;
  }
}
