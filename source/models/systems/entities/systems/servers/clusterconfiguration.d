module models.systems.entities.systems.servers.clusterconfiguration;

@safe:
import models.systems;

// 
class DSystemServerClusterConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("SystemServerClusterConfigurationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "backingTable_SysClusterConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.serverclusterconfigurations");
  }
}
mixin(EntityCalls!("SystemServerClusterConfigurationEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemServerClusterConfigurationEntity);
  
    auto entity = SystemServerClusterConfigurationEntity;
  }
}
