/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.versions.notifications.notification;

@safe:
import models.systems;

class DWorkflowVersionNotificationEntity : DEntity {
  mixin(EntityThis!("WorkflowVersionNotificationEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        WorkflowIdAttribute, //
      ])
      .addValues([
        "action": StringAttribute, //
        "enabled": StringAttribute, //
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
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowVersionNotificationTableRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_versionnotifications")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowVersionNotificationEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowVersionNotificationEntity);

  auto entity = WorkflowVersionNotificationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}