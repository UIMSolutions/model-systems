module models.systems.entities.cityholiday;

@safe:
import models.systems;

class DCityHolidayEntity : DOOPEntity {
  mixin(EntityThis!("CityHolidayEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "city": StringAttribute, //
        "countryRegionId": UUIDAttribute, //
        "stateId": UUIDAttribute, //
        "cityName": StringAttribute, //
        "holidayDate": StringAttribute, //
        "description": StringAttribute, //
        "backingTable_CityHolidayRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_cityholidays");
  }
}
mixin(EntityCalls!("CityHolidayEntity"));

version(test_model_systsms) { unittest {
    assert(CityHolidayEntity);
  
    auto entity = CityHolidayEntity;
  }
}