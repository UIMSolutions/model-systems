module models.systems.entities.currencies.isocode;

@safe:
import models.systems;

class DCurrencyISOCodeEntity : DOOPEntity {
  mixin(EntityThis!("CurrencyISOCodeEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "isoCurrencyCode": StringAttribute, //
        "isoCurrencyCodeNum": StringAttribute, //
        "isoCurrencyName": StringAttribute, //
        "backingTable_ISOCurrencyCodeRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_currencies.isocodes");
  }
}
mixin(EntityCalls!("CurrencyISOCodeEntity"));

version(test_model_administrations) {
  unittest {
    assert(CurrencyISOCodeEntity);

    auto entity = CurrencyISOCodeEntity;
    // TODO more tests
  }
}