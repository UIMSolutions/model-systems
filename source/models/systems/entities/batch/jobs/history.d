module models.systems.entities.batch.jobs.history;

@safe:
import models.systems;

class DBatchJobHistoryEntity : DOOPEntity {
  mixin(EntityThis!("BatchJobHistoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "alertsProcessed": StringAttribute, // 
        "jobDescription": StringAttribute, // 
        "endDateTime": DatetimeAttribute, //  
        "finishing": StringAttribute, // 
        "origStartDateTime": DatetimeAttribute, //  
        "startDateTime": DatetimeAttribute, //  
        "status": StringAttribute, // 
        "company": StringAttribute, // 
        "batchJobId": UUIDAttribute, // 
        "batchCreatedBy":UserIdAttribute, // 
        "canceledBy":UserIdAttribute, // 
        "dataPartition": StringAttribute, // 
        "backingTable_BatchJobHistoryRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_batchjobhistories");
  }
}
mixin(EntityCalls!("BatchJobHistoryEntity"));

version(test_model_administrations) {
  unittest {
    assert(APLFeedback);
    assert(BatchJobHistoryEntity);

    auto entity = BatchJobHistoryEntity;
  }
}