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
  import models.systems.entities.administrations.measurements;
  import models.systems.entities.administrations.numbersequences;
  import models.systems.entities.administrations.segregation_of_duties;
}

static this() {
  import uim.models;

	EntityRegistry
		.register(
			BatchJobHistoryEntity,
			BatchJobEntity,
      BrazilianElectronicReportingParametersEntity,
      BrazilianParametersEntity,
      CaseAssociationEntity,
      CaseDependencyEntity,
      CaseDetailBaseEntity,
      ConfiguratorDefinitionGroupFieldEntity,
      ConfiguratorDefinitionGroupFieldRangeEntity,
      ConfiguratorDefinitionGroupTableRelationEntity,
      ConfiguratorDefinitionGroupTableEntity
		);
}