/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.versions.version_;

@safe:
import models.systems;

class DWorkflowVersionEntity : DEntity {
  mixin(EntityThis!("WorkflowVersionEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        WorkflowIdAttribute, //
      ])
      .addValues([
        "activationConditionId": ConditionIdAttribute, //
        "activationConditionType": StringAttribute, //
        "isActive": StringAttribute, //
        "owner": StringAttribute, //
        "valId": UUIDAttribute, //
        "versionIdBuild": StringAttribute, //
        "versionIdMajor": StringAttribute, //
        "versionIdMinor": StringAttribute, //
        "versionIdRevision": StringAttribute, //
        "workflowTable": StringAttribute, //
        "emailTemplateId": UUIDAttribute, //
        "associationType": StringAttribute, //
        "categoryName": StringAttribute, //
        "dataArea": StringAttribute, //
        "isDefault": StringAttribute, //
        "documentTableName": StringAttribute, //
        "module": StringAttribute, //
        "workflowNumber": StringAttribute, //
        "workflowTypeName": StringAttribute, //
        "type": StringAttribute, //
        "versionId": UUIDAttribute, //
        "relationship_ActiviationConditionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowVersionTableRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_versions")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowVersionEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowVersionEntity);

  auto entity = WorkflowVersionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}