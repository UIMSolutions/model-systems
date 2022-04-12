module models.systems.entities.group;

@safe:
import models.systems;



class DSystemGroup : DOOPEntity {
  mixin(OOPEntityThis!("SystemGroup"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_groups");
  }

  override DOOPEntity clone() { return SystemGroup; }
}
mixin(OOPEntityCalls!("SystemGroup"));

version(test_model_systems) {
  unittest {
    assert(SystemGroup);
  
  auto entity = SystemGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}