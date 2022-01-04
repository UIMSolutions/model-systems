module models.systems.entities.request;

@safe:
import models.systems;



class DSYSRequest : DOOPEntity {
  mixin(EntityThis!("SYSRequest"));  

  static string namespace = moduleName!DSYSRequest;
  override string entityPath() { return "system/request"; }
  override string entityClass() { return "sysRequest"; }
  override string entityClasses() { return "sysRequests"; }

  override DOOPEntity clone() { return SYSRequest; }
}
mixin(EntityCalls!("SYSRequest"));

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