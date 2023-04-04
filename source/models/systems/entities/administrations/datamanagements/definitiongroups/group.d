/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.definitiongroups.group;

@safe:
import models.systems;

class DDataManagementDefinitionGroupEntity : DEntity {
  mixin(EntityThis!("DataManagementDefinitionGroupEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
         
        "description": StringAttribute, // 
        "operationType": StringAttribute, // 
        "projectCategory": StringAttribute, // 
        "generateDataPackage": StringAttribute, // 
        "truncateEntityData": StringAttribute, // 
      ])
      .registerPath("system_datamanagements.definitiongroups")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementDefinitionGroupEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementDefinitionGroupEntity);

    auto entity = DataManagementDefinitionGroupEntity;
    // TODO more tests
  }
}