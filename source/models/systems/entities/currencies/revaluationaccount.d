module models.systems.entities.currencies.revaluationaccount;

@safe:
import models.systems;

class DCurrencyRevaluationAccountEntity : DOOPEntity {
  mixin(EntityThis!("CurrencyRevaluationAccountEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "posting": StringAttribute, //
        "currencyCode": StringAttribute, //
        "legalEntity": StringAttribute, //
        "mainAccountId": UUIDAttribute, //
        "legalEntityId": UUIDAttribute, //
        "mainAccountIdDisplayValue": StringAttribute, //
        "ledgerName": StringAttribute, //
        "exchAdjTaxableType": StringAttribute, //
        "realizedTaxMainAccountId": UUIDAttribute, //
        "realizedTaxMainAccountIdDisplayValue": StringAttribute, //
        "relationship_MainAccountCombinationRelationshipId": UUIDAttribute, //
        "relationship_CurrencyRelationshipId": UUIDAttribute, //
        "backingTable_CurrencyLedgerGainLossAccountRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_currencies.revaluationaccounts");
  }
}
mixin(EntityCalls!("CurrencyRevaluationAccountEntity"));

version(test_model_administrations) {
  unittest {
    assert(CurrencyRevaluationAccountEntity);

    auto entity = CurrencyRevaluationAccountEntity;
    // TODO more tests
  }
}