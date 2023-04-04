/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.configurators.definitions.groups.summation;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupSummationEntity : DEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupSummationEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "average": StringAttribute, // 
        "averageSelected": StringAttribute, // 
        "definitionGroupId": UUIDAttribute, // 
        "countAll": StringAttribute, // 
        "countSelected": StringAttribute, // 
        "fieldName": StringAttribute, // 
        "sumAll": StringAttribute, // 
        "sumSelected": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfSummation_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
       ])
      .registerPath("system_configuratordefinitiongroupsummation")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupSummationEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupSummationEntity);

    auto entity = ConfiguratorDefinitionGroupSummationEntity;
  }
}