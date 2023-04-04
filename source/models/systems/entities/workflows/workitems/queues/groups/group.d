/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.workitems.queues.groups.group;

@safe:
import models.systems;

class DWorkflowWorkItemQueueGroupEntity : DEntity {
  mixin(EntityThis!("WorkflowWorkItemQueueGroupEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "backingTable_WorkflowWorkItemQueueGroupRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueuegroups")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowWorkItemQueueGroupEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowWorkItemQueueGroupEntity);

  auto entity = WorkflowWorkItemQueueGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}