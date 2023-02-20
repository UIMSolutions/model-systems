module models.systems.entities.datamanagements.templates.sources.source;

@safe:
import models.systems;

class DDataManagementTemplateSourceEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTemplateSourceEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "sourceEntity": StringAttribute, //
        "description": StringAttribute, //
        "relationship_DefinitionGroupTemplateSourceRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_datamanagements.templates.sources");
  }
}
mixin(EntityCalls!("DataManagementTemplateSourceEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementTemplateSourceEntity);

    auto entity = DataManagementTemplateSourceEntity;
    // TODO more tests
  }
}