module models.systems.entities.systems.users.groups.group;

@safe:
import models.systems;

class DSystemUserGroupEntity : DEntity {
  mixin(EntityThis!("SystemUserGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "groupId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_UserGroupInfoRelationshipId": UUIDAttribute, //      
      ])
      .registerPath("administration_systems.users.groups");
  }
}
mixin(EntityCalls!("SystemUserGroupEntity"));

version(test_model_systsms) { unittest {
    assert(SystemUserEntity);
  
    auto entity = SystemUserEntity;
  }
}