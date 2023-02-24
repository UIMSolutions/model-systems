module models.systems.entities.systems.group;

@safe:
import models.systems;

// Active Directory Security groups
class DSystemGroupEntity : DEntity {
  mixin(EntityThis!("SystemGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "userId": UUIDAttribute, //
        "name": StringAttribute, //
        "objectID": StringAttribute, //
        "enabled": StringAttribute, //
        "company": StringAttribute, //
        "language": StringAttribute, //
        "preferredTimeZone": StringAttribute, //
        "preferredCalendar": StringAttribute, //
      ])
      .registerPath("administration_systems.groups");
  }
}
mixin(EntityCalls!("SystemGroupEntity"));

version(test_model_systsms) { unittest {
    assert(SystemGroupEntity);
  
    auto entity = SystemGroupEntity;
  }
}