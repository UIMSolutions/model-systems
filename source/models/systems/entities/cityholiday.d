/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.cityholiday;

@safe:
import models.systems;

class DCityHolidayEntity : DEntity {
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