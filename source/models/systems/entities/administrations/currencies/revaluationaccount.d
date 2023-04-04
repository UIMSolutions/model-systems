/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.currencies.revaluationaccount;

@safe:
import models.systems;

class DCurrencyRevaluationAccountEntity : DEntity {
  mixin(EntityThis!("CurrencyRevaluationAccountEntity"));

  override void initialize(Json configSettings = Json(null)) {
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
      .registerPath("system_currencies.revaluationaccounts")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("CurrencyRevaluationAccountEntity"));

version(test_model_systsms) { unittest {
    assert(CurrencyRevaluationAccountEntity);

    auto entity = CurrencyRevaluationAccountEntity;
    // TODO more tests
  }
}