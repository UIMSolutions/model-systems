module models.systems.entities.login;

@safe:
import models.systems;

class DSystemLoginEntity : DOOPEntity {
  mixin(EntityThis!("SystemLoginEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "accountName": StringAttribute
      ]) 
      .registerPath("system_logins");
  }

  override DOOPEntity clone() { return SystemLoginEntity; }

  override DOOPEntity fromRequest(STRINGAA reqParameters) {
    super.fromRequest(reqParameters);
    if ("entity_accountName" in reqParameters) this["accountName"] = reqParameters["entity_accountName"];
    return this; }
}
mixin(EntityCalls!("SystemLoginEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemLoginEntity);
  
  auto entity = SystemLoginEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}