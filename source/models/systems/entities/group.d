module models.systems.entities.group;

@safe:
import models.systems;



class DSystemGroupEntity : DEntity {
  mixin(EntityThis!("SystemGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .registerPath("system_groups");
  }

  override DEntity clone() { return SystemGroupEntity; }
}
mixin(EntityCalls!("SystemGroupEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemGroupEntity);
  
  auto entity = SystemGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}