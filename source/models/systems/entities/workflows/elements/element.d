/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.elements.element;

@safe:
import models.systems;

class DWorkflowElementEntity : DEntity {
  mixin(EntityThis!("WorkflowElementEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ConditionIdAttribute, // 
        ElementIdAttribute, // 
        WorkflowIdAttribute, // 
      ])
      .addValues([
        "autoCompleteAction": StringAttribute, // 
        "autoCompleteConditionId": ConditionIdAttribute, // 
        "elementName": StringAttribute, // 
        "elementType": StringAttribute, // 
        "enableActionsInWorkList": StringAttribute, // 
        "runSubworkflow": StringAttribute, // 
        "runSubworkflowConditionId": ConditionIdAttribute, // 
        "finalApproverUser": StringAttribute, // 
        "required": StringAttribute, // 
        "runInParallel": StringAttribute, // 
        "sequence": StringAttribute, // 
        "enableAutoComplete": StringAttribute, // 
        "enableFinalApprover": StringAttribute, // 
        "enableMaximumRuntime": StringAttribute, // 
        "maximumRuntimeOutcome": StringAttribute, // 
        "maximumRuntimeTime": StringAttribute, // 
        "maximumRuntimeTimeZone": StringAttribute, // 
        "parallelBranchName": StringAttribute, // 
        "parallelBranchElementId": ElementIdAttribute, // 
        "maximumRuntimeDailyCalendar": StringAttribute, // 
        "maximumRuntimeDailyCalendarProvider": StringAttribute, // 
        "maximumRuntimeDailyIncludeFriday": StringAttribute, // 
        "maximumRuntimeDailyIncludeMonday": StringAttribute, // 
        "maximumRuntimeDailyIncludeSaturday": StringAttribute, // 
        "maximumRuntimeDailyIncludeSunday": StringAttribute, // 
        "maximumRuntimeDailyIncludeThursday": StringAttribute, // 
        "maximumRuntimeDailyIncludeTuesday": StringAttribute, // 
        "maximumRuntimeDailyIncludeWednesday": StringAttribute, // 
        "maximumRuntimeDailyUseNonCalendar": StringAttribute, // 
        "maximumRuntimeDailyValue": StringAttribute, // 
        "maximumRuntimeDateType": StringAttribute, // 
        "maximumRuntimeHourCalendar": StringAttribute, // 
        "maximumRuntimeHourCalendarProvider": StringAttribute, // 
        "maximumRuntimeHourIncludeFriday": StringAttribute, // 
        "maximumRuntimeHourIncludeMonday": StringAttribute, // 
        "maximumRuntimeHourIncludeSaturday": StringAttribute, // 
        "maximumRuntimeHourIncludeSunday": StringAttribute, // 
        "maximumRuntimeHourIncludeThursday": StringAttribute, // 
        "maximumRuntimeHourIncludeTuesday": StringAttribute, // 
        "maximumRuntimeHourIncludeWednesday": StringAttribute, // 
        "maximumRuntimeHoursAvailable": StringAttribute, // 
        "maximumRuntimeHourStartTime": StringAttribute, // 
        "maximumRuntimeHourUseNonCalendar": StringAttribute, // 
        "maximumRuntimeHourValue": StringAttribute, // 
        "maximumRuntimeMonthlyDayOfWeek": StringAttribute, // 
        "maximumRuntimeMonthlyWeekInMonth": StringAttribute, // 
        "maximumRuntimeTimeSpanRelationType": StringAttribute, // 
        "maximumRuntimeWeeklyDayOfWeek": StringAttribute, // 
        "maximumRuntimeWeeklyValue": StringAttribute, // 
        "maximumRuntimeYearlyDayOfWeek": StringAttribute, // 
        "maximumRuntimeYearlyMonthInYear": StringAttribute, // 
        "maximumRuntimeYearlyWeekInMonth": StringAttribute, // 
        "relationship_WorkflowVersionRelationshipId": UUIDAttribute, // 
        "relationship_ParallelBranchRelationshipId": UUIDAttribute, // 
        "relationship_SubworkflowConditionRelationshipId": UUIDAttribute, // 
        "relationship_AutoCompleteConditionRelationshipId": UUIDAttribute, // 
        "relationship_ConditionalDecisionConditionRelationshipId": UUIDAttribute, // 
        "backingTable_WorkflowElementTableRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("workflow_elements")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowElementEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowElementEntity);

  auto entity = WorkflowElementEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}