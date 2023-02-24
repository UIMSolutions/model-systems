module models.systems.entities.systems.servers.clusterconfiguration;

@safe:
import models.systems;

// 
class DSystemServerClusterConfigurationEntity : DEntity {
  mixin(EntityThis!("SystemServerClusterConfigurationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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
