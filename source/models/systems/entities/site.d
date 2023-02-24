module models.systems.entities.site;

@safe:
import models.systems;

class DSystemSiteEntity : DEntity {
  mixin(EntityThis!("SystemSiteEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .registerPath("system_sites");
  }

  override DEntity clone() { return SystemSiteEntity; }

  mixin(OProperty!("UUID[]", "users"));
  mixin(OProperty!("UUID[]", "roles"));
  mixin(OProperty!("UUID[]", "groups"));
  mixin(OProperty!("UUID[]", "apps"));
}
mixin(EntityCalls!("SystemSiteEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemSiteEntity);
  
  auto entity = SystemSiteEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}