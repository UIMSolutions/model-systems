module models.systems.entities.dmf.definitiongroups.templateheader;

@safe:
import models.systems;

class DDMFDefinitionGroupTemplateHeaderEntity : DOOPEntity {
  mixin(EntityThis!("DMFDefinitionGroupTemplateHeaderEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "description": StringAttribute, //
        "status": StringAttribute, //
        "validatedDateTime": StringAttribute, //
        "relationship_DMFDefinitionGroupTemplateLineEntityRelationshipId": UUIDAttribute, //
    ])
      .registerPath("administration_dmf.definitiongroups.templateheaders");
  }
}
mixin(EntityCalls!("DMFDefinitionGroupTemplateHeaderEntity"));

version(test_model_administrations) {
  unittest {
    assert(DMFDefinitionGroupTemplateHeaderEntity);

    auto entity = DMFDefinitionGroupTemplateHeaderEntity;
    // TODO more tests
  }
}