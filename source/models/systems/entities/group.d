module models.systems.entities.group;

@safe:
import models.systems;



class DSystemGroupEntity : DOOPEntity {
  mixin(OOPEntityThis!("SystemGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_groups");
  }

  override DOOPEntity clone() { return SystemGroupEntity; }
}
mixin(OOPEntityCalls!("SystemGroupEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemGroupEntity);
  
  auto entity = SystemGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}