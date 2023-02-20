module models.systems.entities.datamanagements.templates.detail;

@safe:
import models.systems;

class DDataManagementTemplateDetailEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTemplateDetailEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "description": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.templates");
  }
}
mixin(EntityCalls!("DataManagementTemplateDetailEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementTemplateDetailEntity);

    auto entity = DataManagementTemplateDetailEntity;
    // TODO more tests
  }
}