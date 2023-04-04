/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.workitems.queues.assignments.assignment;

@safe:
import models.systems;

class DWorkflowWorkItemQueueAssignmentEntity : DEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueAssignmentEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "defaultQueueId": UUIDAttribute, // queue").descriptions(["en":""]),
        "WorkitemType": StringAttribute, //
        "DefaultWorkItemQueueName": StringAttribute, //
        "DefaultWorkItemQueueType": StringAttribute, //
        "backingTable_WorkflowWorkItemQueueExpressionDefRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueueassignments")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueAssignmentEntity")); 

version(test_model_workflows) { unittest {
    assert(WorkflowWorkItemQueueAssignmentEntity);

  auto entity = WorkflowWorkItemQueueAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}