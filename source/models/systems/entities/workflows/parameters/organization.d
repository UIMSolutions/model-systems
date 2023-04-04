/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.parameters.organization;

@safe:
import models.systems;

class DWorkflowParametersOrganizationEntity : DEntity {
  mixin(EntityThis!("WorkflowParametersOrganizationEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "workflowNotifications": StringAttribute, //
        "backingTable_WorkflowParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_parametersorganizations")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowParametersOrganizationEntity")); 

version(test_model_workflows) { unittest {
    assert(WorkflowParametersOrganizationEntity);

  auto entity = WorkflowParametersOrganizationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}