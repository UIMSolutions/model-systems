/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.measurements.sourcesystem;

@safe:
import models.systems;

class DMeasurementSourceSystemEntity : DEntity {
  mixin(EntityThis!("MeasurementSourceSystemEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "name": StringAttribute, //
        /* "Description": StringAttribute, // */
        "backingTable_MeasurementSourceSystemRelationshipId": StringAttribute, //
      ])
      .registerPath("system_measurements.sourcesystems")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("MeasurementSourceSystemEntity"));