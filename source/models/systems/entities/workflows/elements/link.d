/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.elements.link;

@safe:
import models.systems;

class DWorkflowElementLinkEntity : DEntity {
  mixin(EntityThis!("WorkflowElementLinkEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        WorkflowIdAttribute, // 
      ])
      .addValues([
        "level": StringAttribute, // 
        "sequence": StringAttribute, // 
        "sourceType": StringAttribute, // 
        "targetType": StringAttribute, // 
        "sourceElementId": ElementIdAttribute, // 
        "targetElementId": ElementIdAttribute, // 
        "outcome": StringAttribute, // 
        "outcomeName": StringAttribute, // 
        "parallelBranchName": StringAttribute, // 
        "parallelBranchElementId": ElementIdAttribute, // 
        "outcomeRecId": UUIDAttribute, // 
        "sourceSubworkflowElementLinkId": UUIDAttribute, // 
        "targetSubworkflowElementLinkId": UUIDAttribute, // 
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, // 
        "Relationship_SourceElementRelationshipId": UUIDAttribute, // 
        "Relationship_TargetElementRelationshipId": UUIDAttribute, // 
        "Relationship_WorkflowParallelBranchRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowElementLinkTableRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elementlinks")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowElementLinkEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowElementLinkEntity);

  auto entity = WorkflowElementLinkEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}