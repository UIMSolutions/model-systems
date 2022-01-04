module models.systems.entities.app;

@safe:
import models.systems;

class DSYSApp : DOOPEntity {
  mixin(EntityThis!("SYSApp"));

  static string namespace = moduleName!DSYSApp;
  override string entityPath() { return "system/app"; }
  override string entityClass() { return "sysApp"; }
  override string entityClasses() { return "sysApps"; }

  override DOOPEntity clone() { return SYSApp; }
}
mixin(EntityCalls!("SYSApp"));

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