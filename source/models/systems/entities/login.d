module models.systems.entities.login;

@safe:
import models.systems;



class DSYSLogin : DOOPEntity {
  mixin(EntityThis!("SYSLogin"));

  override void initialize() {
    super.initialize;

    this
      .attribute("accountName", OOPAttributeString); 
  }

  static string namespace = moduleName!DSYSLogin;
  override string entityPath() { return "system/login"; }
  override string entityClass() { return "sysLogin"; }
  override string entityClasses() { return "sysLogins"; }

  override DOOPEntity clone() { return SYSLogin; }

  override DOOPEntity fromRequest(STRINGAA reqParameters) {
    super.fromRequest(reqParameters);
    if ("entity_accountName" in reqParameters) this["accountName"] = reqParameters["entity_accountName"];
    return this; }
}
mixin(EntityCalls!("SYSLogin"));

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