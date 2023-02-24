module models.systems.entities.login;

@safe:
import models.systems;

class DSystemLoginEntity : DEntity {
  mixin(EntityThis!("SystemLoginEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "accountName": StringAttribute
      ]) 
      .registerPath("system_logins");
  }

  override DEntity clone() { return SystemLoginEntity; }

  override DEntity fromRequest(STRINGAA reqParameters) {
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