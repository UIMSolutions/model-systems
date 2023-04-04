/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.line_item;

@safe:
import models.systems;

class DWorkflowLineItemEntity : DEntity {
  mixin(EntityThis!("WorkflowLineItemEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ElementIdAttribute, //
        ExpressionIdAttribute, //
      ])
      .addValues([
        "sequence": StringAttribute, //
        "workflowNumber": StringAttribute, //
        "relationship_WorkflowSubworkflowRelationshipId": UUIDAttribute, //
        "relationship_ConditionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowSubWorkflowItemRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_lineitems")      
      .routingPath("/systems");
  }
}
mixin(EntityCalls!("WorkflowLineItemEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowLineItemEntity);

  auto entity = WorkflowLineItemEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}