module models.systems.entities.batch.group;

@safe:
import models.systems;

class DBatchGroupEntity : DOOPEntity {
  mixin(EntityThis!("BatchGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([  
        "serverId": UUIDAttribute, // 
        "description": StringAttribute, // 
        "backingTable_BatchGroupRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_batchgroups");
  }
}
mixin(EntityCalls!("BatchGroupEntity"));

version(test_model_systsms) { unittest {
    assert(BatchGroupEntity);

    auto entity = BatchGroupEntity;
  }
}