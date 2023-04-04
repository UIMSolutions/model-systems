/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.tenant;

@safe:
import models.systems;

class DSystemTenantEntity : DEntity {
  mixin(EntityThis!("SystemTenantEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .registerPath("system_tenants")      
      .routingPath("/systems");
  }

  override DEntity clone() { return SystemTenantEntity; }
}
mixin(EntityCalls!("SystemTenantEntity"));

version(test_model_systems) { unittest {
    assert(SystemTenantEntity);
  
  auto entity = SystemTenantEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}