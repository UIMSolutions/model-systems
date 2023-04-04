/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.exchangerates.type;

@safe:
import models.systems;

class DExchangeRateTypeEntity : DEntity {
  mixin(EntityThis!("ExchangeRateTypeEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"exchangeRateCurrencyPair": StringAttribute, //
				"exchangeRateForStorage": StringAttribute, //
				"startDate": StringAttribute, //
				"endDate": StringAttribute, //
				"conversionFactor": StringAttribute, //
				"exchangeRateType": StringAttribute, //
				"fromCurrency": StringAttribute, //
				"toCurrency": StringAttribute, //
				"rateTypeDescription": StringAttribute, //
				"rateTypeName": StringAttribute, //
				"rate": StringAttribute, //
				"relationship_FromCurrencyRelationshipId": StringAttribute, //
				"relationship_ToCurrencyRelationshipId": StringAttribute, //
				"relationship_ExchangeRateTypeRelationshipId": StringAttribute, //
				"backingTable_ExchangeRateRelationshipId": StringAttribute, //
      ])
      .registerPath("system_exchangerates.types")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("ExchangeRateTypeEntity"));