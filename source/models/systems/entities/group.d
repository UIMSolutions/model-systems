module models.systems.entities.group;

@safe:
import models.systems;



class DSYSGroup : DOOPEntity {
  mixin(OOPEntityThis!("SYSGroup"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_groups");
  }

  override DOOPEntity clone() { return SYSGroup; }
}
mixin(OOPEntityCalls!("SYSGroup"));

version(test_model_systems) {
  unittest {
    assert(SYSGroup);
  
  auto entity = SYSGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}