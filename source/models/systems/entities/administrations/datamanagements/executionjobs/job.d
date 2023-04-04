/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.executionjobs.job;

@safe:
import models.systems;

class DDataManagementExecutionJobEntity : DEntity {
  mixin(EntityThis!("DataManagementExecutionJobEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "jobId": UUIDAttribute
      ])
      .registerPath("system_datamanagements.executionjobs")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementExecutionJobEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementExecutionJobEntity);

    auto entity = DataManagementExecutionJobEntity;
    // TODO more tests
  }
}