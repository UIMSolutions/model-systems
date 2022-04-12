module models.systems.entities.session;

@safe:
import models.systems;

class DSystemSession : DOOPEntity {
  mixin(OOPEntityThis!("SystemSession"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_sessions");
  }

  override DOOPEntity clone() { return SystemSession; }

  override DOOPEntity fromRequest(STRINGAA reqParameters) {
    super.fromRequest(reqParameters);
    if ("entity_siteId" in reqParameters) this["siteId"] = reqParameters["entity_siteId"];
    return this; }
}
mixin(OOPEntityCalls!("SystemSession"));

version(test_model_systems) {
  unittest {
    assert(SystemSession);
  
  auto entity = SystemSession;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}