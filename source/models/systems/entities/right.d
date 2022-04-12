module models.systems.entities.right;

@safe:
import models.systems;

class DSystemRight : DOOPEntity {
  mixin(OOPEntityThis!("SystemRight"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_rights");
  }

  override DOOPEntity clone() { return SystemRight; }
}
mixin(OOPEntityCalls!("SystemRight"));

version(test_model_systems) {
  unittest {
    assert(SystemRight);
  
  auto entity = SystemRight;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}