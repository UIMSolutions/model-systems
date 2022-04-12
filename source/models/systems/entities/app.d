module models.systems.entities.app;

@safe:
import models.systems;

class DSystemApp : DOOPEntity {
  mixin(OOPEntityThis!("SystemApp"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_apps");
  }

  override DOOPEntity clone() { return SystemApp; }
}
mixin(OOPEntityCalls!("SystemApp"));

version(test_model_systems) {
  unittest {
    assert(SystemApp);
  
  auto entity = SystemApp;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}