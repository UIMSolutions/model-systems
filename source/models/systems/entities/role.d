module models.systems.entities.role;

@safe:
import models.systems;



class DSystemRole : DOOPEntity {
  mixin(OOPEntityThis!("SystemRole")); 

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_roles");
  }

  override DOOPEntity clone() { return SystemRole; }

  mixin(SProperty!("UUID[]", "rights"));
  mixin(SProperty!("UUID[]", "roles"));
}
mixin(OOPEntityCalls!("SystemRole"));

version(test_model_systems) {
  unittest {
    assert(SystemRole);
  
  auto entity = SystemRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}