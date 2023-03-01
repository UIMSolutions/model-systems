/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.configurators.definitions.groups.sortorder;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupSortOrderEntity : DEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupSortOrderEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "definitionGroupId": UUIDAttribute, // 
        "fieldName": StringAttribute, // 
        "sortingNumber": StringAttribute, // 
        "sortOrder": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupSortOrderEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfSortOrder_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongroupsortorders");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupSortOrderEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupSortOrderEntity);

    auto entity = ConfiguratorDefinitionGroupSortOrderEntity;
  }
}