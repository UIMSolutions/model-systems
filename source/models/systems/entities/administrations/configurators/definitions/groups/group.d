/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.configurators.definitions.groups.group;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupEntity : DEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "isQueryBased": StringAttribute, // 
        "queryTitle": StringAttribute, // 
        "backingTable_ConfTable_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_configuratordefinitiongroups")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupEntity);

    auto entity = ConfiguratorDefinitionGroupEntity;
    // TODO more tests
  }
}