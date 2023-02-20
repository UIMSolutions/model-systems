module models.systems.entities.configurators.layouts.group;

@safe:
import models.systems;

class DConfiguratorLayoutGroupEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorLayoutGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "layoutGroupId": UUIDAttribute, //
        "name": StringAttribute, //
        "layoutType": StringAttribute, //
        "definitionGroupId": UUIDAttribute, //
        "fileStructure": StringAttribute, //
        "delimitedBy": StringAttribute, //
        "delimiterCharacter": StringAttribute, //
        "textQualifier": StringAttribute, //
        "export": StringAttribute, //
        "import": StringAttribute, //
        "registerType": StringAttribute, //
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, //
        "backingTable_ConfLayoutGroups_BRRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //  
    ])
      .registerPath("administration_configurators.layouts.groups");
  }
}
mixin(EntityCalls!("ConfiguratorLayoutGroupEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorLayoutGroupEntity);

    auto entity = ConfiguratorLayoutGroupEntity;
    // TODO more tests
  }
}