/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.elements.notifications.notification;

@safe:
import models.systems;

class DWorkflowElementNotificationEntity : DEntity {
  mixin(EntityThis!("WorkflowElementNotificationEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ElementIdAttribute, // 
      ])
      .addValues([
        "action": StringAttribute, // 
        "enabled": StringAttribute, // 
        "elementTable": StringAttribute, // 
        "workflowUserValue": StringAttribute, // 
        "assignmentRelationType": StringAttribute, // 
        "assignmentType": StringAttribute, // 
        "hierarchyFilterConditionId": ConditionIdAttribute, // 
        "hierarchyFilterType": StringAttribute, // 
        "hierarchyProviderName": StringAttribute, // 
        "hierarchyStopConditionId": ConditionIdAttribute, // 
        "hierarchyTokenName": StringAttribute, // 
        "participantProviderName": StringAttribute, // 
        "participantTokenName": StringAttribute, // 
        "queueProviderName": StringAttribute, // 
        "queueTokenName": StringAttribute, // 
        "userValue": StringAttribute, // 
        "relationship_WorkflowElementRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowElementNotificationTableRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowEscalationPathRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elementnotifications")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowElementNotificationEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowElementNotificationEntity);

  auto entity = WorkflowElementNotificationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}