/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.configurators.definitions.groups.tables.table;

@safe:
import models.systems;

// 
class DConfiguratorDefinitionGroupTableEntity : DEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupTableEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "dataSourceNumber": StringAttribute, // 
        "relatedTableName": StringAttribute, // 
        "sysRelation": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfTableSelection_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_configuratordefinitiongrouptables")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupTableEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupTableEntity);

    auto entity = ConfiguratorDefinitionGroupTableEntity;
  }
}