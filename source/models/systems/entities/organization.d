module models.systems.entities.organization;

@safe:
import models.systems;

class DSYSOrganization : DOOPEntity {
  mixin(OOPEntityThis!("SYSOrganization"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_organizations");
  }

  override DOOPEntity clone() { return SYSOrganization; }
}
mixin(OOPEntityCalls!("SYSOrganization"));

version(test_model_systems) {
  unittest {
    assert(SYSOrganization);
  
  auto entity = SYSOrganization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}