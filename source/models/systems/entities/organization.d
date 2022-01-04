module models.systems.entities.organization;

@safe:
import models.systems;

class DSYSOrganization : DOOPEntity {
  mixin(EntityThis!("SYSOrganization"));

  static string namespace = moduleName!DSYSOrganization;
  override string entityPath() { return "system/organization"; }
  override string entityClass() { return "sysOrganization"; }
  override string entityClasses() { return "sysOrganizations"; }

  override DOOPEntity clone() { return SYSOrganization; }
}
mixin(EntityCalls!("SYSOrganization"));

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