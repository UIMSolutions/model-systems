/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.dmf.definitiongroups.templateline;

@safe:
import models.systems;

class DDMFDefinitionGroupTemplateLineEntity : DEntity {
  mixin(EntityThis!("DMFDefinitionGroupTemplateLineEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "entity": StringAttribute, //
        "sequence": StringAttribute, //
        "validationStatus": StringAttribute, //
        "executionUnit": StringAttribute, //
        "levelInExecutionUnit": StringAttribute, //
        "failLevelOnError": StringAttribute, //
        "failExecutionUnitOnError": StringAttribute, //
        "sysModule": StringAttribute, //
        "tags": StringAttribute, //
        "entityCategory": StringAttribute, //
        "relationship_DMFDefinitionGroupTemplateHeaderRelationshipId": UUIDAttribute, //
    ])
      .registerPath("system_dmf.definitiongroups.templatelines")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DMFDefinitionGroupTemplateLineEntity"));

version(test_model_systsms) { unittest {
    assert(DMFDefinitionGroupTemplateLineEntity);

    auto entity = DMFDefinitionGroupTemplateLineEntity;
    // TODO more tests
  }
}