module models.systems.entities.request;

@safe:
import models.systems;



class DSYSRequest : DOOPEntity {
  mixin(OOPEntityThis!("SYSRequest"));  

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_requests");
  }

  override DOOPEntity clone() { return SYSRequest; }
}
mixin(OOPEntityCalls!("SYSRequest"));

version(test_model_systems) {
  unittest {
    assert(SYSRequest);
  
  auto entity = SYSRequest;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}