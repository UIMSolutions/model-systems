/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.site;

@safe:
import models.systems;

class DSystemSiteEntity : DEntity {
  mixin(EntityThis!("SystemSiteEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .registerPath("system_sites")      
      .routingPath("/systems");
  }

  override DEntity clone() { return SystemSiteEntity; }

  mixin(OProperty!("UUID[]", "users"));
  mixin(OProperty!("UUID[]", "roles"));
  mixin(OProperty!("UUID[]", "groups"));
  mixin(OProperty!("UUID[]", "apps"));
}
mixin(EntityCalls!("SystemSiteEntity"));

version(test_model_systems) { unittest {
    assert(SystemSiteEntity);
  
  auto entity = SystemSiteEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}