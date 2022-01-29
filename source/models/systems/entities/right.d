module models.systems.entities.right;

@safe:
import models.systems;

class DSYSRight : DOOPEntity {
  mixin(OOPEntityThis!("SYSRight"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_rights");
  }

  override DOOPEntity clone() { return SYSRight; }
}
mixin(OOPEntityCalls!("SYSRight"));

version(test_model_systems) {
  unittest {
    assert(SYSRight);
  
  auto entity = SYSRight;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}