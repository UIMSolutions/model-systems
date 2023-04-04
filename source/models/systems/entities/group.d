/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.group;

@safe:
import models.systems;

class DSystemGroupEntity : DEntity {
  mixin(EntityThis!("SystemGroupEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .registerPath("system_groups")      
      .routingPath("/systems");
  }

  override DEntity clone() { return SystemGroupEntity; }
}
mixin(EntityCalls!("SystemGroupEntity"));

version(test_model_systems) { unittest {
    assert(SystemGroupEntity);
  
  auto entity = SystemGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}