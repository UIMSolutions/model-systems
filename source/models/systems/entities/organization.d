module models.systems.entities.organization;

@safe:
import models.systems;

class DSystemOrganization : DOOPEntity {
  mixin(OOPEntityThis!("SystemOrganization"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_organizations");
  }

  override DOOPEntity clone() { return SystemOrganization; }
}
mixin(OOPEntityCalls!("SystemOrganization"));

version(test_model_systems) {
  unittest {
    assert(SystemOrganization);
  
  auto entity = SystemOrganization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}