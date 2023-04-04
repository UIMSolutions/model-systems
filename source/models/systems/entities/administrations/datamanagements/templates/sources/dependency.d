/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.templates.sources.dependency;

@safe:
import models.systems;

class DDataManagementTemplateSourceDependencyEntity : DEntity {
  mixin(EntityThis!("DataManagementTemplateSourceDependencyEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "sourceEntity": StringAttribute, //
        "dependentOnEntity": StringAttribute, //
        "relationName": StringAttribute, //
        "description": StringAttribute, //
        "friendlyName": StringAttribute, //
        "validationRequired": StringAttribute, //
        "relationship_DefinitionGroupTemplateSourceDependencyRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_datamanagements.templates.sources")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementTemplateSourceDependencyEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTemplateSourceDependencyEntity);

    auto entity = DataManagementTemplateSourceDependencyEntity;
    // TODO more tests
  }
}