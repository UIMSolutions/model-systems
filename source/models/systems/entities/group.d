module models.systems.entities.group;

@safe:
import models.systems;



class DSYSGroup : DOOPEntity {
  mixin(EntityThis!("SYSGroup"));

  static string namespace = moduleName!DSYSGroup;
  override string entityPath() { return "system/group"; }
  override string entityClass() { return "sysGroup"; }
  override string entityClasses() { return "sysGroups"; }

  override DOOPEntity clone() { return SYSGroup; }
}
mixin(EntityCalls!("SYSGroup"));

version(test_model_systems) {
  unittest {
    assert(SYSGroup);
  
  auto entity = SYSGroup;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}