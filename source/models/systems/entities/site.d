module models.systems.entities.site;

@safe:
import models.systems;


class DSYSSite : DOOPEntity {
  mixin(EntityThis!("SYSSite"));

  static string namespace = moduleName!DSYSSite;
  override string entityPath() { return "system/site"; }
  override string entityClass() { return "sysSite"; }
  override string entityClasses() { return "sysSites"; }

  override DOOPEntity clone() { return SYSSite; }

  mixin(SProperty!("UUID[]", "users"));
  mixin(SProperty!("UUID[]", "roles"));
  mixin(SProperty!("UUID[]", "groups"));
  mixin(SProperty!("UUID[]", "apps"));
}
mixin(EntityCalls!("SYSSite"));

version(test_model_systems) {
  unittest {
    assert(SYSSite);
  
  auto entity = SYSSite;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}