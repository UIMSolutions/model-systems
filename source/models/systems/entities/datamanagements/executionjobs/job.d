/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.datamanagements.executionjobs.job;

@safe:
import models.systems;

class DDataManagementExecutionJobEntity : DEntity {
  mixin(EntityThis!("DataManagementExecutionJobEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "description": StringAttribute, //
        "jobId": UUIDAttribute
      ])
      .registerPath("administration_datamanagements.executionjobs");
  }
}
mixin(EntityCalls!("DataManagementExecutionJobEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementExecutionJobEntity);

    auto entity = DataManagementExecutionJobEntity;
    // TODO more tests
  }
}