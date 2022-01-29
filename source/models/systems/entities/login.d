module models.systems.entities.login;

@safe:
import models.systems;

class DSYSLogin : DOOPEntity {
  mixin(OOPEntityThis!("SYSLogin"));

  override void initialize() {
    super.initialize;

    this
      .attribute("accountName", OOPStringAttribute) 
      .registerPath("system_logins");
  }

  override DOOPEntity clone() { return SYSLogin; }

  override DOOPEntity fromRequest(STRINGAA reqParameters) {
    super.fromRequest(reqParameters);
    if ("entity_accountName" in reqParameters) this["accountName"] = reqParameters["entity_accountName"];
    return this; }
}
mixin(OOPEntityCalls!("SYSLogin"));

version(test_model_systems) {
  unittest {
    assert(SYSLogin);
  
  auto entity = SYSLogin;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}