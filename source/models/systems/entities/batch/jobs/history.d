/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.batch.jobs.history;

@safe:
import models.systems;

class DBatchJobHistoryEntity : DEntity {
  mixin(EntityThis!("BatchJobHistoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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

version(test_model_systsms) { unittest {
    
    assert(BatchJobHistoryEntity);

    auto entity = BatchJobHistoryEntity;
  }
}