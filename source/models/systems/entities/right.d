module models.systems.entities.right;

@safe:
import models.systems;

class DSystemRightEntity : DOOPEntity {
  mixin(EntityThis!("SystemRightEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .registerPath("system_rights");
  }

  override DOOPEntity clone() { return SystemRightEntity; }
}
mixin(EntityCalls!("SystemRightEntity"));

unittest {
  version(test_model_systems) {
    assert(SystemRightEntity);
  
  auto entity = SystemRightEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
