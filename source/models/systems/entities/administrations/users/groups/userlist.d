/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.users.groups.userlist;

@safe:
import models.systems;

class DSystemUserGroupUserListEntity : DEntity {
  mixin(EntityThis!("SystemUserGroupUserListEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "groupId": UUIDAttribute, // 
        "userId": UUIDAttribute, // 
        "relationship_SystemUserEntityRelationshipId": UUIDAttribute, // 
        "relationship_SystemUserGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_UserGroupListRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_systems.users.groups.userlists")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemUserGroupUserListEntity"));

version(test_model_systsms) { unittest {
    assert(SystemUserGroupUserListEntity);
  
    auto entity = SystemUserGroupUserListEntity;
  }
}