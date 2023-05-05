/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.login;

@safe:
import models.systems;

class DSystemLoginEntity : DEntity {
  mixin(EntityThis!("SystemLoginEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "accountName": StringAttribute
      ]) 
      .registerPath("system_logins")      
      .routingPath("/systems");
  }

  override DEntity clone() { return SystemLoginEntity; }

  override void readFromRequest(STRINGAA reqParameters, bool usePrefix = true) {
    super.readFromRequest(reqParameters, usePrefix);
    if ("entity_accountName" in reqParameters) {
      this["accountName"] = reqParameters["entity_accountName"];
    }
  }
}
mixin(EntityCalls!("SystemLoginEntity"));

version(test_model_systems) { unittest {
    assert(SystemLoginEntity);
  
  auto entity = SystemLoginEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}