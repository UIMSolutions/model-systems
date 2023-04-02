/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.workitems.queues.assignee;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueAssigneeEntity : DEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueAssigneeEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "isOwner": StringAttribute, //
        "User": StringAttribute, //
        "WorkitemQueue": StringAttribute, //
        "WorkItemQueueName": StringAttribute, //
        "WorkItemQueueType": StringAttribute, //
        "backingTable_WorkflowWorkItemQueueAssigneeRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueueassignees");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueAssigneeEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowWorkItemQueueAssigneeEntity);

  auto entity = WorkflowWorkItemQueueAssigneeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}