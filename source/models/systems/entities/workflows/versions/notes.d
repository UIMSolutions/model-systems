/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.versions.notes;

@safe:
import models.systems;

class DWorkflowVersionNotesEntity : DEntity {
  mixin(EntityThis!("WorkflowVersionNotesEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        WorkflowIdAttribute, //
      ])
      .addValues([
        "notes": StringAttribute, //
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowVersionTableNotesRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_versionnotes")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowVersionNotesEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowVersionNotesEntitys);

  auto entity = WorkflowVersionNotesEntitys;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}