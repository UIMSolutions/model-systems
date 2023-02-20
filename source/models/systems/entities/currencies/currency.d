module models.systems.entities.currencies.currency;

@safe:
import models.systems;

class DCurrencyEntity : DOOPEntity {
  mixin(EntityThis!("CurrencyEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "currencyCode": StringAttribute, //
        "generalRoundingRule": StringAttribute, //
        "currencyGender": StringAttribute, //
        "name": StringAttribute, //
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
      .registerPath("administration_currencies");
  }
}
mixin(EntityCalls!("CurrencyEntity"));

version(test_model_administrations) {
  unittest {
    assert(CurrencyEntity);

    auto entity = CurrencyEntity;
    // TODO more tests
  }
}