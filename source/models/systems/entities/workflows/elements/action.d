/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.elements.action;

@safe:
import models.systems;

class DWorkflowElementActionEntity : DEntity {
  mixin(EntityThis!("WorkflowElementActionEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "enabled": StringAttribute, // 
        "isOutcome": StringAttribute, // 
        "ElementId": ElementIdAttribute, // 
        "relationship_WorkflowElementRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowActionTableRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elementactions")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowElementActionEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowElementActionEntity);

  auto entity = WorkflowElementActionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}