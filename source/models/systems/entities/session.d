/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.session;

@safe:
import models.systems;

class DSystemSessionEntity : DEntity {
  mixin(EntityThis!("SystemSessionEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .registerPath("system_sessions")      
      .routingPath("/systems");
  }

  override DEntity clone() { return SystemSessionEntity; }

  override void readFromRequest(STRINGAA reqParameters, bool usePrefix = true) {
    super.readFromRequest(reqParameters, usePrefix);
    
    if ("entity_siteId" in reqParameters) {
      this["siteId"] = reqParameters["entity_siteId"];
    }
  }
}
mixin(EntityCalls!("SystemSessionEntity"));

version(test_model_systems) { unittest {
    assert(SystemSessionEntity);
  
  auto entity = SystemSessionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}