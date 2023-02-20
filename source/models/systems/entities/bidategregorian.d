module models.systems.entities.bidategregorian;

@safe:
import models.systems;

class DBIDateGregorianEntity : DOOPEntity {
  mixin(EntityThis!("BIDateGregorianEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
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

version(test_model_systsms) { unittest {
    assert(BIDateGregorianEntity);
  
  auto entity = BIDateGregorianEntity;
  }
}
