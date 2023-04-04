/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.expressions.expression;

@safe:
import models.systems;

class DWorkflowExpressionEntity : DEntity {
  mixin(EntityThis!("WorkflowExpressionEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "expressionClassName": StringAttribute, //
        "xPathQuery": StringAttribute, //
        "expressionDefinition": StringAttribute, //
        "backingTable_ExpressionTableRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_expressions")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowExpressionEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowExpressionEntity);

  auto entity = WorkflowExpressionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}