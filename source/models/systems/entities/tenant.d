module models.systems.entities.tenant;

@safe:
import models.systems;


class DSystemTenant : DOOPEntity {
  mixin(OOPEntityThis!("SystemTenant"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_tenants");
  }

  override DOOPEntity clone() { return SystemTenant; }
}
mixin(OOPEntityCalls!("SystemTenant"));

version(test_model_systems) {
  unittest {
    assert(SystemTenant);
  
  auto entity = SystemTenant;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}