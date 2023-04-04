/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.request;

@safe:
import models.systems;

class DSystemRequestEntity : DEntity {
  mixin(EntityThis!("SystemRequestEntity"));  

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .registerPath("system_requests")      
      .routingPath("/systems");
  }

  override DEntity clone() { return SystemRequestEntity; }
}
mixin(EntityCalls!("SystemRequestEntity"));

version(test_model_systems) { unittest {
    assert(SystemRequestEntity);
  
  auto entity = SystemRequestEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}