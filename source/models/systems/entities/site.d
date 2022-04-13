module models.systems.entities.site;

@safe:
import models.systems;

class DSystemSiteEntity : DOOPEntity {
  mixin(OOPEntityThis!("SystemSiteEntity"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_sites");
  }

  override DOOPEntity clone() { return SystemSiteEntity; }

  mixin(SProperty!("UUID[]", "users"));
  mixin(SProperty!("UUID[]", "roles"));
  mixin(SProperty!("UUID[]", "groups"));
  mixin(SProperty!("UUID[]", "apps"));
}
mixin(OOPEntityCalls!("SystemSiteEntity"));

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