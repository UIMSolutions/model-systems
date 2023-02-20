module models.systems.entities.currencies.currency;

@safe:
import models.systems;

class DCurrencyEntity : DOOPEntity {
  mixin(EntityThis!("CurrencyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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

version(test_model_systsms) { unittest {
    assert(CurrencyEntity);

    auto entity = CurrencyEntity;
    // TODO more tests
  }
}