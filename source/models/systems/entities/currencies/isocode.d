module models.systems.entities.currencies.isocode;

@safe:
import models.systems;

class DCurrencyISOCodeEntity : DEntity {
  mixin(EntityThis!("CurrencyISOCodeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "isoCurrencyCode": StringAttribute, //
        "isoCurrencyCodeNum": StringAttribute, //
        "isoCurrencyName": StringAttribute, //
        "backingTable_ISOCurrencyCodeRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_currencies.isocodes");
  }
}
mixin(EntityCalls!("CurrencyISOCodeEntity"));

version(test_model_systsms) { unittest {
    assert(CurrencyISOCodeEntity);

    auto entity = CurrencyISOCodeEntity;
    // TODO more tests
  }
}