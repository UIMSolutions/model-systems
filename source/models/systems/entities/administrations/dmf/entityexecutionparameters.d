/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.dmf.entityexecutionparameters;

@safe:
import models.systems;

class DDMFEntityExecutionParametersEntity : DEntity {
  mixin(EntityThis!("DMFEntityExecutionParametersEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "entityName": StringAttribute, //
        "importThresholdRecordCount": StringAttribute, //
        "numberOfImportTasks": StringAttribute, //
      ])
      .registerPath("system_dmf.entityexecutionparameters")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DMFEntityExecutionParametersEntity"));

version(test_model_systems) { unittest {
    assert(DMFEntityExecutionParametersEntity);

    auto entity = DMFEntityExecutionParametersEntity;
    // TODO more tests
  }
}