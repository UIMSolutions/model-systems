/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.templates.sources.source;

@safe:
import models.systems;

class DDataManagementTemplateSourceEntity : DEntity {
  mixin(EntityThis!("DataManagementTemplateSourceEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "sourceEntity": StringAttribute, //
        "description": StringAttribute, //
        "relationship_DefinitionGroupTemplateSourceRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_datamanagements.templates.sources")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementTemplateSourceEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTemplateSourceEntity);

    auto entity = DataManagementTemplateSourceEntity;
    // TODO more tests
  }
}