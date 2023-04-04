/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.numbersequences.group;

@safe:
import models.systems;

class DNumberSequenceGroupEntity : DEntity {
  mixin(EntityThis!("NumberSequenceGroupEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"numberSequenceGroup": StringAttribute, //
				"backingTable_NumberSequenceGroupRelationshipId": StringAttribute, //
      ])
      .registerPath("system_numbersequences.groups")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("NumberSequenceGroupEntity"));