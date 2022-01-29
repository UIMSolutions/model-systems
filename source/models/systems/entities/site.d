module models.systems.entities.site;

@safe:
import models.systems;

class DSYSSite : DOOPEntity {
  mixin(OOPEntityThis!("SYSSite"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_sites");
  }

  override DOOPEntity clone() { return SYSSite; }

  mixin(SProperty!("UUID[]", "users"));
  mixin(SProperty!("UUID[]", "roles"));
  mixin(SProperty!("UUID[]", "groups"));
  mixin(SProperty!("UUID[]", "apps"));
}
mixin(OOPEntityCalls!("SYSSite"));

version(test_model_systems) {
  unittest {
    assert(SYSSite);
  
  auto entity = SYSSite;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}