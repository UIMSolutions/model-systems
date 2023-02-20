module models.systems.entities.datamanagements.templates.detail;

@safe:
import models.systems;

class DDataManagementTemplateDetailEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTemplateDetailEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "templateId": UUIDAttribute, //
        "description": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.templates");
  }
}
mixin(EntityCalls!("DataManagementTemplateDetailEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTemplateDetailEntity);

    auto entity = DataManagementTemplateDetailEntity;
    // TODO more tests
  }
}