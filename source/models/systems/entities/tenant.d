module models.systems.entities.tenant;

@safe:
import models.systems;


class DSYSTenant : DOOPEntity {
  mixin(EntityThis!("SYSTenant"));

  static string namespace = moduleName!DSYSTenant;
  override string entityPath() { return "system/tenant"; }
  override string entityClass() { return "sysTenant"; }
  override string entityClasses() { return "sysTenants"; }

  override DOOPEntity clone() { return SYSTenant; }
}
mixin(EntityCalls!("SYSTenant"));

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