module models.systems.entities.right;

@safe:
import models.systems;

class DSYSRight : DOOPEntity {
  mixin(EntityThis!("SYSRight"));

  static string namespace = moduleName!DSYSRight;
  override string entityPath() { return "system/right"; }
  override string entityClass() { return "sysRight"; }
  override string entityClasses() { return "sysRights"; }

  override DOOPEntity clone() { return SYSRight; }
}
mixin(EntityCalls!("SYSRight"));

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