module models.systems.entities.session;

@safe:
import models.systems;

class DSYSSession : DOOPEntity {
  mixin(EntityThis!("SYSSession"));

  static string namespace = moduleName!DSYSSession;
  override string entityPath() { return "system/session"; }
  override string entityClass() { return "sysSession"; }
  override string entityClasses() { return "sysSessions"; }

  override DOOPEntity clone() { return SYSSession; }

  override DOOPEntity fromRequest(STRINGAA reqParameters) {
    super.fromRequest(reqParameters);
    if ("entity_siteId" in reqParameters) this["siteId"] = reqParameters["entity_siteId"];
    return this; }
}
mixin(EntityCalls!("SYSSession"));

version(test_model_systems) {
  unittest {
    assert(SYSSession);
  
  auto entity = SYSSession;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}