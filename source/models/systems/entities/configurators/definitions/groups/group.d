/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.configurators.definitions.groups.group;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupEntity : DEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "definitionGroupId": UUIDAttribute, // 
        "isQueryBased": StringAttribute, // 
        "queryTitle": StringAttribute, // 
        "backingTable_ConfTable_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongroups");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupEntity);

    auto entity = ConfiguratorDefinitionGroupEntity;
    // TODO more tests
  }
}