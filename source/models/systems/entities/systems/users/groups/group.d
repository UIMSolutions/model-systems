module models.systems.entities.systems.users.groups.group;

@safe:
import models.systems;

class DSystemUserGroupEntity : DOOPEntity {
  mixin(EntityThis!("SystemUserGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
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