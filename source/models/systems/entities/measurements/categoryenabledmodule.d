/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.measurements.categoryenabledmodule;

@safe:
import models.systems;

class DMeasurementCategoryEnabledModuleEntity : DEntity {
  mixin(EntityThis!("MeasurementCategoryEnabledModuleEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"module": StringAttribute, //
				"companyId": StringAttribute, //
				"categoryId": StringAttribute, //
				"category": StringAttribute, //
				"backingTable_MeasurementCategoryEnabledModuleRelationshipId": StringAttribute, //
      ])
      .registerPath("system_measurements.categoryenabledmodules");
  }
}
mixin(EntityCalls!("MeasurementCategoryEnabledModuleEntity"));