/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.workitems.queues.queue;

@safe:
import models.workflows;

class DWFLWorkItemQueue : DEntity {
  mixin(EntityThis!("WFLWorkItemQueue"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "Status": StringAttribute, //
        "WorkItemType": StringAttribute, //
        "WorkItemTypeFriendlyName": StringAttribute, //
        "backingTable_WorkflowWorkItemQueueRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_workitemqueues");
  }
}
mixin(EntityCalls!("WFLWorkItemQueue"));

version(test_model_workflows) { unittest {
    assert(WFLWorkItemQueue);

  auto entity = WFLWorkItemQueue;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}