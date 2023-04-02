/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.workflows.entities.workitems.queues.groups.relation;

@safe:
import models.workflows;

class DWorkflowWorkItemQueueGroupRelationEntity : DEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueGroupRelationEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "workflowWorkitemQueue": StringAttribute, //
        "workflowWorkitemQueueGroup": StringAttribute, //
        "workItemQueueName": StringAttribute, //
        "workItemQueueType": StringAttribute, //
        "workItemQueueGroupName": StringAttribute, //
        "backingTable_WorkflowWorkItemQueueGroupRelationRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueuegrouprelations");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueGroupRelationEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowWorkItemQueueGroupRelationEntity);

  auto entity = WorkflowWorkItemQueueGroupRelationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}