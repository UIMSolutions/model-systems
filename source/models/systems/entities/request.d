module models.systems.entities.request;

@safe:
import models.systems;



class DSystemRequest : DOOPEntity {
  mixin(OOPEntityThis!("SystemRequest"));  

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_requests");
  }

  override DOOPEntity clone() { return SystemRequest; }
}
mixin(OOPEntityCalls!("SystemRequest"));

version(test_model_systems) {
  unittest {
    assert(SystemRequest);
  
  auto entity = SystemRequest;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}