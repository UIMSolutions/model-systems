/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.steps.message;

@safe:
import models.systems;

class DWorkflowStepMessageEntity : DEntity {
  mixin(EntityThis!("WorkflowStepMessageEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        LanguageIdAttribute, //
      ])
      .addValues([
        "text": StringAttribute, //
        "stepId": UUIDAttribute, // wflStep").descriptions(["en":""]),
        "relationship_WorkflowStepRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowMessageTextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_stepmessages")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowStepMessageEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowStepMessageEntity);

  auto entity = WorkflowStepMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}