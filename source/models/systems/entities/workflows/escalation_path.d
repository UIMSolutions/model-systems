/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.workflows.escalation_path;

@safe:
import models.systems;

class DWorkflowEscalationPathEntity : DEntity {
  mixin(EntityThis!("WorkflowEscalationPathEntity"));
  
  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    /* Level		Workflow/WorkflowEscalationPathEntity
StepId		Workflow/WorkflowEscalationPathEntity
WorkflowUserValue		Workflow/WorkflowEscalationPathEntity
AssignmentRelationType		Workflow/WorkflowEscalationPathEntity
AssignmentType		Workflow/WorkflowEscalationPathEntity
HierarchyFilterConditionId		Workflow/WorkflowEscalationPathEntity
HierarchyFilterType		Workflow/WorkflowEscalationPathEntity
HierarchyProviderName		Workflow/WorkflowEscalationPathEntity
HierarchyStopConditionId		Workflow/WorkflowEscalationPathEntity
HierarchyTokenName		Workflow/WorkflowEscalationPathEntity
ParticipantProviderName		Workflow/WorkflowEscalationPathEntity
ParticipantTokenName		Workflow/WorkflowEscalationPathEntity
QueueProviderName		Workflow/WorkflowEscalationPathEntity
QueueTokenName		Workflow/WorkflowEscalationPathEntity
UserValue		Workflow/WorkflowEscalationPathEntity
DailyCalendar		Workflow/WorkflowEscalationPathEntity
DailyCalendarProvider		Workflow/WorkflowEscalationPathEntity
DailyIncludeFriday		Workflow/WorkflowEscalationPathEntity
DailyIncludeMonday		Workflow/WorkflowEscalationPathEntity
DailyIncludeSaturday		Workflow/WorkflowEscalationPathEntity
DailyIncludeSunday		Workflow/WorkflowEscalationPathEntity
DailyIncludeThursday		Workflow/WorkflowEscalationPathEntity
DailyIncludeTuesday		Workflow/WorkflowEscalationPathEntity
DailyIncludeWednesday		Workflow/WorkflowEscalationPathEntity
DailyUseNonCalendar		Workflow/WorkflowEscalationPathEntity
DailyValue		Workflow/WorkflowEscalationPathEntity
DateType		Workflow/WorkflowEscalationPathEntity
HourCalendar		Workflow/WorkflowEscalationPathEntity
HourCalendarProvider		Workflow/WorkflowEscalationPathEntity
HourIncludeFriday		Workflow/WorkflowEscalationPathEntity
HourIncludeMonday		Workflow/WorkflowEscalationPathEntity
HourIncludeSaturday		Workflow/WorkflowEscalationPathEntity
HourIncludeSunday		Workflow/WorkflowEscalationPathEntity
HourIncludeThursday		Workflow/WorkflowEscalationPathEntity
HourIncludeTuesday		Workflow/WorkflowEscalationPathEntity
HourIncludeWednesday		Workflow/WorkflowEscalationPathEntity
HoursAvailable		Workflow/WorkflowEscalationPathEntity
HourStartTime		Workflow/WorkflowEscalationPathEntity
HourUseNonCalendar		Workflow/WorkflowEscalationPathEntity
HourValue		Workflow/WorkflowEscalationPathEntity
MonthlyDayOfWeek		Workflow/WorkflowEscalationPathEntity
MonthlyWeekInMonth		Workflow/WorkflowEscalationPathEntity
TimeSpanRelationType		Workflow/WorkflowEscalationPathEntity
WeeklyDayOfWeek		Workflow/WorkflowEscalationPathEntity
WeeklyValue		Workflow/WorkflowEscalationPathEntity
YearlyDayOfWeek		Workflow/WorkflowEscalationPathEntity
YearlyMonthInYear		Workflow/WorkflowEscalationPathEntity
YearlyWeekInMonth		Workflow/WorkflowEscalationPathEntity
Relationship_WorkflowStepRelationshipId		Workflow/WorkflowEscalationPathEntity
Relationship_HierarchyFilterConditionRelationshipId		Workflow/WorkflowEscalationPathEntity
Relationship_HierarchyStopConditionRelationshipId		Workflow/WorkflowEscalationPathEntity
BackingTable_WorkflowEscalationPathTableRelationshipId	 */
    this
      //.addValues([])
      .registerPath("workflow_escalationpaths")      
      .routingPath("/systems/workflows");
  }
}
mixin(EntityCalls!("WorkflowEscalationPathEntity"));

version(test_model_workflows) { unittest {
    assert(WorkflowEscalationPathEntity);

  auto entity = WorkflowEscalationPathEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
} 