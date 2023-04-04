/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.batch.jobs.job;

@safe:
import models.systems;

class DBatchJobEntity : DEntity {
  mixin(EntityThis!("BatchJobEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "canceledBy":UserIdAttribute, // 
        "jobDescription": StringAttribute, // 
        "companyAccounts": StringAttribute, // 
        "partitionKey": StringAttribute, // 
        "endDateTime": DatetimeAttribute, //  
        "finishing": StringAttribute, // 
        "saveJobToHistory": StringAttribute, // 
        "origStartDateTime": DatetimeAttribute, //  
        "recurrence": StringAttribute, // 
        "runtimeJob": StringAttribute, // 
        "startDateTime": DatetimeAttribute, //  
        "status": StringAttribute, // 
        "startDate": StringAttribute, // 
        "startTime": StringAttribute, // 
        "batchJobRecId": UUIDAttribute, // 
        "executingBy":UserIdAttribute, // 
        "backingTable_BatchJobRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_batchjobs")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("BatchJobEntity"));

version(test_model_systsms) { unittest {
    assert(BatchJobEntity);

    auto entity = BatchJobEntity;
  }
}