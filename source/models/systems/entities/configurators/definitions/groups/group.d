module models.systems.entities.configurators.definitions.groups.group;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "definitionGroupId": UUIDAttribute, // 
        "isQueryBased": StringAttribute, // 
        "queryTitle": StringAttribute, // 
        "backingTable_ConfTable_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongroups");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupEntity);

    auto entity = ConfiguratorDefinitionGroupEntity;
    // TODO more tests
  }
}