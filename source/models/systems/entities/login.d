module models.systems.entities.login;

@safe:
import models.systems;

class DSystemLogin : DOOPEntity {
  mixin(OOPEntityThis!("SystemLogin"));

  override void initialize() {
    super.initialize;

    this
      .attribute("accountName", OOPStringAttribute) 
      .registerPath("system_logins");
  }

  override DOOPEntity clone() { return SystemLogin; }

  override DOOPEntity fromRequest(STRINGAA reqParameters) {
    super.fromRequest(reqParameters);
    if ("entity_accountName" in reqParameters) this["accountName"] = reqParameters["entity_accountName"];
    return this; }
}
mixin(OOPEntityCalls!("SystemLogin"));

version(test_model_systems) {
  unittest {
    assert(SystemLogin);
  
  auto entity = SystemLogin;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}