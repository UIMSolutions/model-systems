module models.systems.entities.session;

@safe:
import models.systems;

class DSystemSessionEntity : DOOPEntity {
  mixin(EntityThis!("SystemSessionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .registerPath("system_sessions");
  }

  override DOOPEntity clone() { return SystemSessionEntity; }

  override DOOPEntity fromRequest(STRINGAA reqParameters) {
    super.fromRequest(reqParameters);
    if ("entity_siteId" in reqParameters) this["siteId"] = reqParameters["entity_siteId"];
    return this; }
}
mixin(EntityCalls!("SystemSessionEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemSessionEntity);
  
  auto entity = SystemSessionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}