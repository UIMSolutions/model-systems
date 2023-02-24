module models.systems.entities.datamanagements.templates.sources.dependency;

@safe:
import models.systems;

class DDataManagementTemplateSourceDependencyEntity : DEntity {
  mixin(EntityThis!("DataManagementTemplateSourceDependencyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "templateId": UUIDAttribute, //
        "sourceEntity": StringAttribute, //
        "dependentOnEntity": StringAttribute, //
        "relationName": StringAttribute, //
        "description": StringAttribute, //
        "friendlyName": StringAttribute, //
        "validationRequired": StringAttribute, //
        "relationship_DefinitionGroupTemplateSourceDependencyRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_datamanagements.templates.sources");
  }
}
mixin(EntityCalls!("DataManagementTemplateSourceDependencyEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTemplateSourceDependencyEntity);

    auto entity = DataManagementTemplateSourceDependencyEntity;
    // TODO more tests
  }
}