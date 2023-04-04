/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.versions.notifications.message;

@safe:
import models.systems;

class DWorkflowVersionNotificationMessageEntity : DEntity {
  mixin(EntityThis!("WorkflowVersionNotificationMessageEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        LanguageIdAttribute, //
        WorkflowIdAttribute, //
      ])
      .addValues([
        "text": StringAttribute, //
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowMessageTextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_versionnotificationmessages")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowVersionNotificationMessageEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowVersionNotificationMessageEntity);

  auto entity = WorkflowVersionNotificationMessageEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}