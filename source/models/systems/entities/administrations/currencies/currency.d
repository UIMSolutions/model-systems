/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.currencies.currency;

@safe:
import models.systems;

class DCurrencyEntity : DEntity {
  mixin(EntityThis!("CurrencyEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "currencyCode": StringAttribute, //
        "generalRoundingRule": StringAttribute, //
        "currencyGender": StringAttribute, //
        
        "referenceCurrencyForTriangulation": StringAttribute, //
        "roundingRuleFixedAssetDepreciation": StringAttribute, //
        "roundingMethodFixedAssetDepreciation": StringAttribute, //
        "roundingMethodPrices": StringAttribute, //
        "roundingMethodPurchaseOrders": StringAttribute, //
        "roundingMethodSalesOrders": StringAttribute, //
        "roundingRulePrices": StringAttribute, //
        "roundingRulePurchaseOrders": StringAttribute, //
        "roundingRuleSalesOrders": StringAttribute, //
        "symbol": StringAttribute, //
        "backingTable_CurrencyRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_currencies")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("CurrencyEntity"));

version(test_model_systsms) { unittest {
    assert(CurrencyEntity);

    auto entity = CurrencyEntity;
    // TODO more tests
  }
}