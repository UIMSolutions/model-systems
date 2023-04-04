/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.bidategregorian;

@safe:
import models.systems;

class DBIDateGregorianEntity : DEntity {
  mixin(EntityThis!("BIDateGregorianEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "gregorianDate": StringAttribute, //
        "gregorianDateId": UUIDAttribute, //
        "backingTable_BIDateGregorianRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_bidategregorian")      
      .routingPath("/systems");
  }
}
mixin(EntityCalls!("BIDateGregorianEntity"));

version(test_model_systsms) { unittest {
    assert(BIDateGregorianEntity);
  
  auto entity = BIDateGregorianEntity;
  }
}
