/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.steps.step;

@safe:
import models.systems;

class DWorkflowStepEntity : DEntity {
  mixin(EntityThis!("WorkflowStepEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ElementIdAttribute, //
      ])
      .addValues([
        "completionPolicy": StringAttribute, //
        "completionPolicyPercentage": StringAttribute, //
        "runStep": StringAttribute, //
        "runStepConditionId": ConditionIdAttribute, //
        "sequence": StringAttribute, //
        "stepId": UUIDAttribute, // WorkflowStepEntity").descriptions(["en":""]),
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
        "iserValue": StringAttribute, //
        "dailyCalendar": StringAttribute, //
        "dailyCalendarProvider": StringAttribute, //
        "dailyIncludeFriday": StringAttribute, //
        "dailyIncludeMonday": StringAttribute, //
        "dailyIncludeSaturday": StringAttribute, //
        "dailyIncludeSunday": StringAttribute, //
        "dailyIncludeThursday": StringAttribute, //
        "dailyIncludeTuesday": StringAttribute, //
        "dailyIncludeWednesday": StringAttribute, //
        "dailyUseNonCalendar": StringAttribute, //
        "dailyValue": StringAttribute, //
        "dateType": StringAttribute, //
        "hourCalendar": StringAttribute, //
        "hourCalendarProvider": StringAttribute, //
        "hourIncludeFriday": StringAttribute, //
        "hourIncludeMonday": StringAttribute, //
        "hourIncludeSaturday": StringAttribute, //
        "hourIncludeSunday": StringAttribute, //
        "hourIncludeThursday": StringAttribute, //
        "hourIncludeTuesday": StringAttribute, //
        "hourIncludeWednesday": StringAttribute, //
        "hoursAvailable": StringAttribute, //
        "hourStartTime": StringAttribute, //
        "hourUseNonCalendar": StringAttribute, //
        "hourValue": StringAttribute, //
        "monthlyDayOfWeek": StringAttribute, //
        "monthlyWeekInMonth": StringAttribute, //
        "timeSpanRelationType": StringAttribute, //
        "weeklyDayOfWeek": StringAttribute, //
        "weeklyValue": StringAttribute, //
        "yearlyDayOfWeek": StringAttribute, //
        "yearlyMonthInYear": StringAttribute, //
        "yearlyWeekInMonth": StringAttribute, //
        "escalationAction": StringAttribute, //
        "escalationType": StringAttribute, //
        "escalationPathAction": StringAttribute, //
        "relationship_WorkflowElementRelationshipId": UUIDAttribute, //
        "relationship_ConditionRelationshipId": UUIDAttribute, //
        "relationship_HierarchyFilterConditionRelationshipId": UUIDAttribute, //
        "relationship_HierarchyStopConditionRelationshipId": UUIDAttribute, //
        "backingTable_WorkflowStepTableRelationshipId": UUIDAttribute, //
      ])
      .registerPath("workflow_steps")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowStepEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowStepEntity);

  auto entity = WorkflowStepEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}