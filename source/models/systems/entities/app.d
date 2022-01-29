module models.systems.entities.app;

@safe:
import models.systems;

class DSYSApp : DOOPEntity {
  mixin(OOPEntityThis!("SYSApp"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_apps");
  }

  override DOOPEntity clone() { return SYSApp; }
}
mixin(OOPEntityCalls!("SYSApp"));

version(test_model_systems) {
  unittest {
    assert(SYSApp);
  
  auto entity = SYSApp;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}