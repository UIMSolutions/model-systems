/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.batch.server_schedule;

@safe:
import models.systems;

class DBatchServerScheduleEntity : DEntity {
  mixin(EntityThis!("BatchServerScheduleEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "endTime": StringAttribute, // 
        "maximumBatchThreads": StringAttribute, // 
        "aosInstanceName": StringAttribute, // 
        "startTime": StringAttribute, // 
        "backingTable_BatchServerConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_batchserverschedules")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("BatchServerScheduleEntity"));

version(test_model_systsms) { unittest {
    assert(BatchServerScheduleEntity);

    auto entity = BatchServerScheduleEntity;
  }
}