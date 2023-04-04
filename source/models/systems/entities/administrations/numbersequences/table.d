/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.numbersequences.table;

@safe:
import models.systems;

class DNumberSequenceTableEntity : DEntity {
  mixin(EntityThis!("NumberSequenceTableEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"toALowerNumber": StringAttribute, //
				"toAHigherNumber": StringAttribute, //
				"stopped": StringAttribute, //
				"cleanUp": StringAttribute, //
				"interval": StringAttribute, //
				"continuous": StringAttribute, //
				"cyclical": StringAttribute, //
				"preallocation": StringAttribute, //
				"quantityOfNumbers": StringAttribute, //
				"format": StringAttribute, //
				"largest": StringAttribute, //
				"inUse": StringAttribute, //
				"dateTime": StringAttribute, //
				"smallest": StringAttribute, //
				"manual": StringAttribute, //
				"next": StringAttribute, //
				"skipCounting": StringAttribute, //
				"numberSequenceCode": StringAttribute, //
				"numberSequenceScopeRecId": StringAttribute, //
				"company": StringAttribute, //
				"fiscalCalendarPeriod": StringAttribute, //
				"legalEntity": StringAttribute, //
				"operatingUnit": StringAttribute, //
				"operatingUnitTypes": StringAttribute, //
				"scopeValue": StringAttribute, //
				"scopeType": StringAttribute, //
				"annotatedFormat": StringAttribute, //
				"backingTable_NumberSequenceTableRelationshipId": StringAttribute, //
      ])
      .registerPath("system_numbersequences.tables")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("NumberSequenceTableEntity"));