module models.systems.entities.batch.group;

@safe:
import models.systems;

class DBatchGroupEntity : DOOPEntity {
  mixin(EntityThis!("BatchGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([  
        "serverId": UUIDAttribute, // 
        "description": StringAttribute, // 
        "backingTable_BatchGroupRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_batchgroups");
  }
}
mixin(EntityCalls!("BatchGroupEntity"));

version(test_model_administrations) {
  unittest {
    assert(BatchGroupEntity);

    auto entity = BatchGroupEntity;
  }
}