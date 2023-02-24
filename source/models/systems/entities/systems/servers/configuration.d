module models.systems.entities.systems.servers.configuration;

@safe:
import models.systems;

// 
class DSystemServerConfigurationEntity : DEntity {
  mixin(EntityThis!("SystemServerConfigurationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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
      .registerPath("administration_systems.serversconfigurations");
  }
}
mixin(EntityCalls!("SystemServerConfigurationEntity"));

version(test_model_systsms) { unittest {
    assert(SystemServerConfigurationEntity);
  
  auto entity = SystemServerConfigurationEntity;
  }
}
