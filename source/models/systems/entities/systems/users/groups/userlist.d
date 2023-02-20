module models.systems.entities.systems.users.groups.userlist;

@safe:
import models.systems;

class DSystemUserGroupUserListEntity : DOOPEntity {
  mixin(EntityThis!("SystemUserGroupUserListEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "groupId": UUIDAttribute, // 
        "userId": UUIDAttribute, // 
        "relationship_SystemUserEntityRelationshipId": UUIDAttribute, // 
        "relationship_SystemUserGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_UserGroupListRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.users.groups.userlists");
  }
}
mixin(EntityCalls!("SystemUserGroupUserListEntity"));

version(test_model_systsms) { unittest {
    assert(SystemUserGroupUserListEntity);
  
    auto entity = SystemUserGroupUserListEntity;
  }
}