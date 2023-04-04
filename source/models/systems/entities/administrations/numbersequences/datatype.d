/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.numbersequences.datatype;

@safe:
import models.systems;

class DNumberSequenceDataTypeEntity : DEntity {
  mixin(EntityThis!("NumberSequenceDataTypeEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"dataType": StringAttribute, //
				"typeID": StringAttribute, //
				"group": StringAttribute, //
				"reference": StringAttribute, //
				"scopeType": StringAttribute, //
				"sorting": StringAttribute, //
				"toALowerNumber": StringAttribute, //
				"toAHigherNumber": StringAttribute, //
				"continuous": StringAttribute, //
				"quantityOfNumbers": StringAttribute, //
				"highest": StringAttribute, //
				"lowest": StringAttribute, //
				"manual": StringAttribute, //
				"numberSequenceArea": StringAttribute, //
				"partitionKey": StringAttribute, //
				"backingTable_NumberSequenceDatatypeRelationshipId": StringAttribute, //
      ])
      .registerPath("system_numbersequences.datatypes")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("NumberSequenceDataTypeEntity"));