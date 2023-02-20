module models.systems.entities.datamanagements.templates.template_;

@safe:
import models.systems;

class DDataManagementTemplateEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTemplateEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "description": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.templates");
  }
}
mixin(EntityCalls!("DataManagementTemplateEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTemplateEntity);

    auto entity = DataManagementTemplateEntity;
    // TODO more tests
  }
}