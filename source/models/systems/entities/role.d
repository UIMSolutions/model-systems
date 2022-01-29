module models.systems.entities.role;

@safe:
import models.systems;



class DSYSRole : DOOPEntity {
  mixin(OOPEntityThis!("SYSRole")); 

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_roles");
  }

  override DOOPEntity clone() { return SYSRole; }

  mixin(SProperty!("UUID[]", "rights"));
  mixin(SProperty!("UUID[]", "roles"));
}
mixin(OOPEntityCalls!("SYSRole"));

version(test_model_systems) {
  unittest {
    assert(SYSRole);
  
  auto entity = SYSRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}