/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.currencies.isocode;

@safe:
import models.systems;

class DCurrencyISOCodeEntity : DEntity {
  mixin(EntityThis!("CurrencyISOCodeEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "isoCurrencyCode": StringAttribute, //
        "isoCurrencyCodeNum": StringAttribute, //
        "isoCurrencyName": StringAttribute, //
        "backingTable_ISOCurrencyCodeRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_currencies.isocodes")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("CurrencyISOCodeEntity"));

version(test_model_systsms) { unittest {
    assert(CurrencyISOCodeEntity);

    auto entity = CurrencyISOCodeEntity;
    // TODO more tests
  }
}