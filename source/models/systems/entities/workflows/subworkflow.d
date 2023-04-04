/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.subworkflow;

@safe:
import models.systems;

class DWorkflowSubworkflowEntity : DEntity {
  mixin(EntityThis!("WorkflowSubworkflowEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ElementIdAttribute, //
        WorkflowIdAttribute, //
      ])
      .addValues([
        "documentKeyField": StringAttribute, //
        "documentKeyTable": StringAttribute, //
        "elementName": StringAttribute, //
        "elementType": StringAttribute, //
        "lineItemType": StringAttribute, //
        "parallelBranchElementId": ElementIdAttribute, //
        "parallelBranchName": StringAttribute, //
        "waitForComplete": StringAttribute, //
        "workflowNumber": StringAttribute, //
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, //
        "relationship_WorkflowParallelBranchRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowSubWorkflowRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_subworkflows")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowSubworkflowEntity"));


version(test_model_workflows) { unittest {
    assert(WorkflowSubworkflowEntity);

  auto entity = WorkflowSubworkflowEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}