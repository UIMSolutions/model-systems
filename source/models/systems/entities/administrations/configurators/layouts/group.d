/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.configurators.layouts.group;

@safe:
import models.systems;

class DConfiguratorLayoutGroupEntity : DEntity {
  mixin(EntityThis!("ConfiguratorLayoutGroupEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "layoutGroupId": UUIDAttribute, //
        
        "layoutType": StringAttribute, //
        "definitionGroupId": UUIDAttribute, //
        "fileStructure": StringAttribute, //
        "delimitedBy": StringAttribute, //
        "delimiterCharacter": StringAttribute, //
        "textQualifier": StringAttribute, //
        "export": StringAttribute, //
        "import": StringAttribute, //
        "registerType": StringAttribute, //
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, //
        "backingTable_ConfLayoutGroups_BRRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //  
      ])
      .registerPath("system_configurators.layouts.groups")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("ConfiguratorLayoutGroupEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorLayoutGroupEntity);

    auto entity = ConfiguratorLayoutGroupEntity;
    // TODO more tests
  }
}