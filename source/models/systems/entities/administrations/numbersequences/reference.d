/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.numbersequences.reference;

@safe:
import models.systems;

class DNumberSequencesReferenceEntity : DEntity {
  mixin(EntityThis!("NumberSequencesReferenceEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"reuseNumbers": StringAttribute, //
				"numberSequenceDatatype": StringAttribute, //
				"numberSequenceCodeRecId": StringAttribute, //
				"numberSequenceScope": StringAttribute, //
				"numberSequenceCode": StringAttribute, //
				"dataTypeName": StringAttribute, //
				"scopeValue": StringAttribute, //
				"scopeType": StringAttribute, //
				"backingTable_NumberSequenceReferenceRelationshipId": StringAttribute, //
      ])
      .registerPath("system_numbersequences.references")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("NumberSequencesReferenceEntity"));