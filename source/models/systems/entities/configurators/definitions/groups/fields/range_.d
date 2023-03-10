/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.configurators.definitions.groups.fields.range_;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupFieldRangeEntity : DEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupFieldRangeEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "fieldName": StringAttribute, // 
        "range": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfRange_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratorDefinitiongroupfieldranges");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupFieldRangeEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupFieldRangeEntity);

    auto entity = ConfiguratorDefinitionGroupFieldRangeEntity;
  }
}