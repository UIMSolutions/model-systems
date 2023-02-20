module models.systems.entities.batch.server_schedule;

@safe:
import models.systems;

class DBatchServerScheduleEntity : DOOPEntity {
  mixin(EntityThis!("BatchServerScheduleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "endTime": StringAttribute, // 
        "maximumBatchThreads": StringAttribute, // 
        "aosInstanceName": StringAttribute, // 
        "startTime": StringAttribute, // 
        "backingTable_BatchServerConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_batchserverschedules");
  }
}
mixin(EntityCalls!("BatchServerScheduleEntity"));

version(test_model_administrations) {
  unittest {
    assert(BatchServerScheduleEntity);

    auto entity = BatchServerScheduleEntity;
  }
}