/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.dmf.entityexecutionparameters;

@safe:
import models.systems;

class DDMFEntityExecutionParametersEntity : DEntity {
  mixin(EntityThis!("DMFEntityExecutionParametersEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "entityName": StringAttribute, //
        "importThresholdRecordCount": StringAttribute, //
        "numberOfImportTasks": StringAttribute, //
      ])
      .registerPath("administration_dmf.entityexecutionparameters");
  }
}
mixin(EntityCalls!("DMFEntityExecutionParametersEntity"));

version(test_model_systsms) { unittest {
    assert(DMFEntityExecutionParametersEntity);

    auto entity = DMFEntityExecutionParametersEntity;
    // TODO more tests
  }
}