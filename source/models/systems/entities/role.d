/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.role;

@safe:
import models.systems;

class DSystemRoleEntity : DEntity {
mixin(EntityThis!("SystemRoleEntity")); 

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .registerPath("system_roles")      
      .routingPath("/systems");
  }

  override DEntity clone() { return SystemRoleEntity; }

  mixin(OProperty!("UUID[]", "rights"));
  mixin(OProperty!("UUID[]", "roles"));
}
mixin(EntityCalls!("SystemRoleEntity"));

version(test_model_systems) { unittest {
    assert(SystemRoleEntity);
  
  auto entity = SystemRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}