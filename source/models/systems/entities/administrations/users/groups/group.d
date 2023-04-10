/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.users.groups.group;

@safe:
import models.systems;

class DSystemUserGroupEntity : DEntity {
  mixin(EntityThis!("SystemUserGroupEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "groupId": UUIDAttribute, //
        "backingTable_UserGroupInfoRelationshipId": UUIDAttribute, //      
      ])
      .registerPath("system_systems.users.groups")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemUserGroupEntity"));

version(test_model_systsms) { unittest {
    assert(SystemUserEntity);
  
    auto entity = SystemUserEntity;
  }
}