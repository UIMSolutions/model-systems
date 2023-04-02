/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.parallel_branch;

@safe:
import models.workflows;

class DWorkflowParallelBranchEntity : DEntity {
  mixin(EntityThis!("WorkflowParallelBranchEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ElementIdAttribute, //
      ])
      .addValues([
        "Relationship_WorkflowElementRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowParallelBranchTableRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_parallelbranches");
  }
}
mixin(EntityCalls!("WorkflowParallelBranchEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowParallelBranchEntity);

  auto entity = WorkflowParallelBranchEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}