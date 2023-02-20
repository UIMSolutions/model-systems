module models.systems.entities.systems.users.groups.group;

@safe:
import models.systems;

class DSystemUserGroupEntity : DOOPEntity {
  mixin(EntityThis!("SystemUserGroupEntity"));

  override void initialize() {
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

version(test_model_administrations) {
  unittest {
    assert(SystemUserEntity);
  
    auto entity = SystemUserEntity;
  }
}