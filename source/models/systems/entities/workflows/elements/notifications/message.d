/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.elements.notifications.message;

@safe:
import models.systems;

class DWorkflowElementNotificationMessageEntity : DEntity {
  mixin(EntityThis!("WorkflowElementNotificationMessageEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        LanguageIdAttribute, // 
      ])
      .addValues([
        "text": StringAttribute, // 
        "elementLinkSequence": StringAttribute, // 
        "elementLinkSourceElementId": ElementIdAttribute, // 
        "elementLinkTargetElementId": ElementIdAttribute, // 
        "elementOutcome": StringAttribute, // 
        "relationship_WorkflowElementNotificationMessageRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowMessageTextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elementnotificationmessages")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowElementNotificationMessageEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowElementNotificationMessageEntity);

  auto entity = WorkflowElementNotificationMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
