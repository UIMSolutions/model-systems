module models.systems.entities.organization;

@safe:
import models.systems;

class DSystemOrganizationEntity : DOOPEntity {
  mixin(OOPEntityThis!("SystemOrganizationEntity"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_organizations");
  }

  override DOOPEntity clone() { return SystemOrganizationEntity; }
}
mixin(OOPEntityCalls!("SystemOrganizationEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemOrganizationEntity);
  
  auto entity = SystemOrganizationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}