/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.cases.detail;

@safe:
import models.systems;

class DCaseDetailBaseEntity : DEntity {
  mixin(EntityThis!("CaseDetailBaseEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        ContactIdAttribute, // 
      ])
      .addValues([
        "answerId": UUIDAttribute, // 
        "billingProjectId": UUIDAttribute, // 
        "caseCategoryHierarchyDetail": StringAttribute, // 
        "caseId": UUIDAttribute, // 
        "caseStatus": StringAttribute, // 
        "categoryId": UUIDAttribute, // 
        "categoryType": StringAttribute, // 
        "closedBy":UserIdAttribute, // 
        "closedDateAndTime": StringAttribute, // 
        "compliance": StringAttribute, // 
        "caseCreatedDateAndTime": StringAttribute, // 
        "department": StringAttribute, // 
        "dirParty": StringAttribute, // 
        "employeeResponsibleName": StringAttribute, // 
        "employeeResponsiblePersonnelNumber": StringAttribute, // 
        "fmlAApproved": StringAttribute, // 
        "fmlAApprovedBy":UserIdAttribute, // 
        "fmlAApprovedHours": StringAttribute, // 
        "fmlAEstimatedLeaveEndDate": StringAttribute, // 
        "fmlAHoursWorked": StringAttribute, // 
        "fmlALeaveReason": StringAttribute, // 
        "fmlALeaveRequestDate": StringAttribute, // 
        "fmlALeaveSchedule": StringAttribute, // 
        "fmlALeaveStartDate": StringAttribute, // 
        "fmlALengthOfEmployment": StringAttribute, // 
        "fmlAMaintainHoursManually": StringAttribute, // 
        "fmlAMilitaryHoursAvailable": StringAttribute, // 
        "fmlAStandardHoursAvailable": StringAttribute, // 
        "hcmWorker": StringAttribute, // 
        "instanceRelationType": StringAttribute, // 
        "notes": StringAttribute, // 
        "departmentNumber": StringAttribute, // 
        "partyNumber": StringAttribute, // 
        "plannedEffectiveDate": StringAttribute, // 
        "priority": StringAttribute, // 
        "processId": UUIDAttribute, // 
        "questionnaireId": UUIDAttribute, // 
        "resolution": StringAttribute, // 
        "serviceStageId": UUIDAttribute, // 
        "serviceLevelAgreementId": UUIDAttribute, // 
        "serviceLevelAgreementStatus": StringAttribute, // 
        "serviceLevelCompletionDate": StringAttribute, // 
        "emailId": UUIDAttribute, // 
        "relationship_DirPartyBaseEntityRelationshipId": UUIDAttribute, // 
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, // 
        "relationship_smmContactPersonEntityRelationshipId": UUIDAttribute, // 
        "relationship_OMOperatingUnitEntityRelationshipId": UUIDAttribute, // 
        "relationship_HcmWorkerEntityRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_casedetailbases")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("CaseDetailBaseEntity"));

version(test_model_systsms) { unittest {
    assert(CaseDetailBaseEntity);

    auto entity = CaseDetailBaseEntity;
  }
}