module models.systems.entities.tenant;

@safe:
import models.systems;


class DSystemTenantEntity : DOOPEntity {
  mixin(OOPEntityThis!("SystemTenantEntity"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_tenants");
  }

  override DOOPEntity clone() { return SystemTenantEntity; }
}
mixin(OOPEntityCalls!("SystemTenantEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemTenantEntity);
  
  auto entity = SystemTenantEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}