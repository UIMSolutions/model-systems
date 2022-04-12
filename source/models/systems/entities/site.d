module models.systems.entities.site;

@safe:
import models.systems;

class DSystemSite : DOOPEntity {
  mixin(OOPEntityThis!("SystemSite"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_sites");
  }

  override DOOPEntity clone() { return SystemSite; }

  mixin(SProperty!("UUID[]", "users"));
  mixin(SProperty!("UUID[]", "roles"));
  mixin(SProperty!("UUID[]", "groups"));
  mixin(SProperty!("UUID[]", "apps"));
}
mixin(OOPEntityCalls!("SystemSite"));

version(test_model_systems) {
  unittest {
    assert(SystemSite);
  
  auto entity = SystemSite;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}