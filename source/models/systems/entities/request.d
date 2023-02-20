module models.systems.entities.request;

@safe:
import models.systems;



class DSystemRequestEntity : DOOPEntity {
  mixin(EntityThis!("SystemRequestEntity"));  

  override void initialize() {
    super.initialize(configSettings);

    this
      .registerPath("system_requests");
  }

  override DOOPEntity clone() { return SystemRequestEntity; }
}
mixin(EntityCalls!("SystemRequestEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemRequestEntity);
  
  auto entity = SystemRequestEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}