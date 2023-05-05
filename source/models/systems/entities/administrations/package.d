module models.systems.entities.administrations;

public {
  import models.systems.entities.administrations.batch;
  import models.systems.entities.administrations.brazilian;
  import models.systems.entities.administrations.cases;
  import models.systems.entities.administrations.configurators;
  import models.systems.entities.administrations.currencies;
  import models.systems.entities.administrations.datamanagements;
  import models.systems.entities.administrations.dmf;
  import models.systems.entities.administrations.documents;
  import models.systems.entities.administrations.emails;
  import models.systems.entities.administrations.exchangerates;
  import models.systems.entities.administrations.measurements;
  import models.systems.entities.administrations.numbersequences;
  import models.systems.entities.administrations.policies;
  import models.systems.entities.administrations.securities;
  import models.systems.entities.administrations.segregation_of_duties;
  import models.systems.entities.administrations.servers;
  import models.systems.entities.administrations.users;
}

public {
  import models.systems.entities.administrations.globalconfiguration;
  import models.systems.entities.administrations.group;
}

static this() {
  import models.systems;

	EntityRegistry
		.register(
      BatchGroupEntity,
			BatchJobHistoryEntity,
			BatchJobEntity,
      BatchServerScheduleEntity,
      BIDateGregorianEntity,
      BrazilianElectronicReportingParametersEntity,
      BrazilianParametersEntity,
      CaseAssociationEntity,
      CaseDependencyEntity,
      CaseDetailBaseEntity,
      CityHolidayEntity,
      ConfiguratorDefinitionGroupFieldEntity,
      ConfiguratorDefinitionGroupFieldRangeEntity,
      ConfiguratorDefinitionGroupTableRelationEntity,
      ConfiguratorDefinitionGroupTableEntity,
      ConfiguratorDefinitionGroupEntity,
      ConfiguratorDefinitionGroupSortOrderEntity,
      ConfiguratorDefinitionGroupSummationEntity,
      ConfiguratorLayoutFieldEntity,
      ConfiguratorLayoutGroupEntity,
      ConfiguratorLayoutLineEntity,
      CurrencyEntity,
      CurrencyISOCodeEntity,
      CurrencyRevaluationAccountEntity,
      DataManagementEntity,
      DataManagementTargetMapEntity,
      DataManagementDefinitionGroupDetailEntity,
      DataManagementDefinitionGroupEntity,
      DataManagementExecutionJobDetailEntity,
      DataManagementExecutionJobEntity,
      DataManagementTemplateDetailEntity,
      DataManagementTemplateEntity,
      DataManagementTemplateSourceDependencyEntity,
      DataManagementTemplateSourceEntity,
      DemoDataPostEntity,
      DirPartyCDSEntity,
      DMFEntityExecutionParametersEntity,
      DMFDefinitionGroupTemplateHeaderEntity,
      DMFDefinitionGroupTemplateLineEntity,
      DocumentEnabledTableEntity,
      DocumentFileTypesEntity,
      DocumentParameterEntity,
      DocumentReferenceEntity,
      DocumentTypeEntity,
      DocumentRoutingClientAppEntity,
      DocumentRoutingJobEntity,
      DocumentRoutingPrinterEntity,
      EcoResProductCDSCategoryAssignmentEntity,
      EFDocEmailAccountConfigurationEntity,
      EmailTemplateMessageSystemEntity,
      EmailTemplateSystemEntity,
      ExchangeRateEntity,
      ExchangeRateTypeEntity,
      GBTParameterEntity,
      MeasurementCategoryEnabledModuleEntity,
      MeasurementSourceSystemEntity,
      NumberSequenceDataTypeEntity,
      NumberSequenceGroupEntity,
      NumberSequencesReferenceEntity,
      NumberSequenceTableEntity,
      NumberSequenceEntity,
      SecuritySegregationOfDutiesRuleEntity,
      SystemAccountEntity,
      SystemAppEntity,
      SystemGroupEntity,
      SystemEmailParameterEntity,
      SystemLoginEntity,
      SystemOrganizationEntity,
      SystemParameterEntity,
      SystemPasswordEntity,
      SystemPasswordRuleEntity,
      SystemPolicyInternalOrganizationAssignmentEntity,
      SystemPolicyOrganizationEntity,
      SystemPolicyEntity,
      SystemPolicyRuleTypeEntity,
      SystemPolicyTypeEntity,
      SystemSecurityDutyCustomizationEntity,
      SystemSecurityDutyEntity,
      SystemSecurityPermissionEntity,
      SystemSecurityPrivilegeCustomizationEntity,
      SystemSecurityPrivilegeEntity,
      SystemSecurityRoleCustomizationsEntity,
      SystemSecurityRoleDutyEntity,
      SystemSecurityRoleEntity,
      SystemSecuritySubRoleEntity,
      SystemSecurityUserRoleAssociationEntity,
      // SystemSecurityUserRoleEntity,
      SystemSegregationOfDutiesConflictEntity,
      SystemServerClusterConfigurationEntity,
      SystemServerConfigurationEntity, 
      SystemRequestEntity,
      SystemRightEntity,
      SystemRoleEntity,
      SystemSessionEntity,
      SystemSiteEntity,
      SystemTenantEntity,
      SystemUserEntity,
      SystemGlobalConfigurationEntity,
      SystemGroupEntity,
      SystemUserEntity,
      SystemUserGroupEntity,
      SystemUserGroupUserListEntity,
      WorkflowEscalationPathEntity,
      WorkflowLineItemEntity,
      WorkflowParallelBranchEntity,
      WorkflowSubworkflowEntity,
      WorkflowElementActionEntity,
      WorkflowElementEntity,
      WorkflowElementLinkEntity,
      WorkflowElementOutcomeMessageEntity,
      WorkflowElementNotificationMessageEntity,
      WorkflowElementNotificationEntity,
      WorkflowExpressionEntity,
      WorkflowParametersOrganizationEntity,
      WorkflowParametersSystemEntity,
      WorkflowStepMessageEntity,
      WorkflowStepEntity,
      WorkflowVersionNotesEntity,
      WorkflowVersionEntity,
      WorkflowVersionNotificationMessageEntity,
      WorkflowVersionNotificationEntity,
      WorkflowWorkItemQueueAssigneeEntity,
      WorkflowWorkItemQueueAssignmentEntity,
      WorkflowWorkItemQueueAssignmentRuleEntity,
      WorkflowWorkItemQueueGroupEntity,
      WorkflowWorkItemQueueGroupRelationEntity
		);
}