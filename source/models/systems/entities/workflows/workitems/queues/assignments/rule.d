/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.workitems.queues.assignments.rule;

@safe:
import models.systems;

class DWorkflowWorkItemQueueAssignmentRuleEntity : DEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueAssignmentRuleEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ExpressionIdAttribute, //
      ])
      .addValues([
        "EvaluationOrder": StringAttribute, //
        "Expression": StringAttribute, //
        "WorkflowWorkItemQueue": StringAttribute, //
        "WorkFlowWorkItemQueueExpressionDef": StringAttribute, //
        "WorkItemQueueName": StringAttribute, //
        "WorkItemQueueType": StringAttribute, //
        "WorkItemType": StringAttribute, //
        "backingTable_WorkflowWorkItemQueueExpressionRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueueassignmentrules")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueAssignmentRuleEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowWorkItemQueueAssignmentRuleEntity);

  auto entity = WorkflowWorkItemQueueAssignmentRuleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}