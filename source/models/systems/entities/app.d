module models.systems.entities.app;

@safe:
import models.systems;

class DSystemAppEntity : DOOPEntity {
  mixin(EntityThis!("SystemAppEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .registerPath("system_apps");
  }

  override DOOPEntity clone() { return SystemAppEntity; }
}
mixin(EntityCalls!("SystemAppEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemAppEntity);
  
  auto entity = SystemAppEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}