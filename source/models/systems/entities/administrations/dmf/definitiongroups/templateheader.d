/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.dmf.definitiongroups.templateheader;

@safe:
import models.systems;

class DDMFDefinitionGroupTemplateHeaderEntity : DEntity {
  mixin(EntityThis!("DMFDefinitionGroupTemplateHeaderEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "description": StringAttribute, //
        "status": StringAttribute, //
        "validatedDateTime": StringAttribute, //
        "relationship_DMFDefinitionGroupTemplateLineEntityRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_dmf.definitiongroups.templateheaders")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DMFDefinitionGroupTemplateHeaderEntity"));

version(test_model_systsms) { unittest {
    assert(DMFDefinitionGroupTemplateHeaderEntity);

    auto entity = DMFDefinitionGroupTemplateHeaderEntity;
    // TODO more tests
  }
}