/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.configurators.definitions.groups.tables.relation;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupTableRelationEntity : DEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupTableRelationEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "fixedValue": StringAttribute, // 
        "relatedField": StringAttribute, // 
        "relatedTable": StringAttribute, // 
        "relationshipType": StringAttribute, // 
        "sourceFieldName": StringAttribute, // 
        "sourceTableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfRelations_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_configuratordefinitiongrouptablerelation")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupTableRelationEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupTableRelationEntity);

    auto entity = ConfiguratorDefinitionGroupTableRelationEntity;
  }
}