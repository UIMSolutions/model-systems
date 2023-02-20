module models.systems.entities.bidategregorian;

@safe:
import models.systems;

class DBIDateGregorianEntity : DOOPEntity {
  mixin(EntityThis!("BIDateGregorianEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "gregorianDate": StringAttribute, //
        "gregorianDateId": UUIDAttribute, //
        "backingTable_BIDateGregorianRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_bidategregorian");
  }
}
mixin(EntityCalls!("BIDateGregorianEntity"));

version(test_model_administrations) {
  unittest {
    assert(BIDateGregorianEntity);
  
  auto entity = BIDateGregorianEntity;
  }
}
