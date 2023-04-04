/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.parameters.system;

@safe:
import models.systems;

class DWorkflowParametersSystemEntity : DEntity {
  mixin(EntityThis!("WorkflowParametersSystemEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "workflowExecutionUser": StringAttribute, //
        "id": UUIDAttribute, //
        "workflowNotifications": StringAttribute, //
        "addAttachments": StringAttribute, //
        "numberOfBatchTasks": StringAttribute, //
        "isAllowApprovalBySubmitter": StringAttribute, //
        "backingTable_SysWorkflowParametersRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_parameterssystems")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowParametersSystemEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowParametersSystemEntity);

  auto entity = WorkflowParametersSystemEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}