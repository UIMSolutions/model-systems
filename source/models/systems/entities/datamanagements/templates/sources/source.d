module models.systems.entities.datamanagements.templates.sources.source;

@safe:
import models.systems;

class DDataManagementTemplateSourceEntity : DEntity {
  mixin(EntityThis!("DataManagementTemplateSourceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "templateId": UUIDAttribute, //
        "sourceEntity": StringAttribute, //
        "description": StringAttribute, //
        "relationship_DefinitionGroupTemplateSourceRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_datamanagements.templates.sources");
  }
}
mixin(EntityCalls!("DataManagementTemplateSourceEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTemplateSourceEntity);

    auto entity = DataManagementTemplateSourceEntity;
    // TODO more tests
  }
}