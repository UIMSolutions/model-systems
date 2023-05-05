/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.group;

@safe:
import models.systems;

// Active Directory Security groups
class DSystemXGroupEntity : DEntity {
  mixin(EntityThis!("SystemXGroupEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "userId": UUIDAttribute, //
        
        "objectID": StringAttribute, //
        "enabled": StringAttribute, //
        "company": StringAttribute, //
        "language": StringAttribute, //
        "preferredTimeZone": StringAttribute, //
        "preferredCalendar": StringAttribute, //
      ])
      .registerPath("system_systems.groups")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemXGroupEntity"));

version(test_model_systsms) { unittest {
    assert(SystemXGroupEntity);
  
    auto entity = SystemXGroupEntity;
  }
}