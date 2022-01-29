module models.systems.entities.tenant;

@safe:
import models.systems;


class DSYSTenant : DOOPEntity {
  mixin(OOPEntityThis!("SYSTenant"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_tenants");
  }

  override DOOPEntity clone() { return SYSTenant; }
}
mixin(OOPEntityCalls!("SYSTenant"));

version(test_model_systems) {
  unittest {
    assert(SYSTenant);
  
  auto entity = SYSTenant;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}