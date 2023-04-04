/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.datamanagement;

@safe:
import models.systems;

class DDataManagementEntity : DEntity {
  mixin(EntityThis!("DataManagementEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "entityName": StringAttribute, //
        "stagingTableName": StringAttribute, //
        "targetName": StringAttribute, //
        "category": StringAttribute, //
        "modules": StringAttribute, //
        "tags": StringAttribute, //
        "isShared": StringAttribute, //
        "countryRegionCodes": StringAttribute, //
        "configurationKeyName": StringAttribute, //
        "entityKey": StringAttribute, //
        "recVersionValue": StringAttribute, //
        "changeTrackingType": StringAttribute, //
      ])
      .registerPath("system_datamanagements")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementEntity);

    auto entity = DataManagementEntity;
    // TODO more tests
  }
}