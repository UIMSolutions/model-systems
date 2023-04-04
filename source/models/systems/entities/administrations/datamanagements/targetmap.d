/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.targetmap;

@safe:
import models.systems;

class DDataManagementTargetMapEntity : DEntity {
  mixin(EntityThis!("DataManagementTargetMapEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "entity": StringAttribute, //
        "isAutoManual": StringAttribute, //
        "targetDataSourceName": StringAttribute, //
        "targetField": StringAttribute, //
        "targetTable": StringAttribute, //
        "stagingField": StringAttribute, //
        "arrayIndex": StringAttribute, //
        "shortStagingField": StringAttribute, //
        "isRequired": StringAttribute, //
        "isSystem": StringAttribute, //
        "fieldDataTypeValue": StringAttribute, //
        "recVersionValue": StringAttribute, //
        "dataSourceName": StringAttribute, //
        "dataSourceField": StringAttribute, //
        "fieldLength": StringAttribute, //
        "entityLabel": StringAttribute, //
        "fieldAOTName": StringAttribute, //
      ])
      .registerPath("system_datamanagements.targetmaps")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementTargetMapEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTargetMapEntity);

    auto entity = DataManagementTargetMapEntity;
    // TODO more tests
  }
}