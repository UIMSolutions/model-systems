/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.elements.outcome_message;

@safe:
import models.systems;

class DWorkflowElementOutcomeMessageEntity : DEntity {
  mixin(EntityThis!("WorkflowElementOutcomeMessageEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ChannelIdAttribute, // 
      ])
      .addValues([
        "ChannelDatabaseId": UUIDAttribute, // 
        "backingTable_WorkflowElementOutcomeMessageRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elementoutcomemessages")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowElementOutcomeMessageEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowElementOutcomeMessageEntity);

  auto entity = WorkflowElementOutcomeMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}