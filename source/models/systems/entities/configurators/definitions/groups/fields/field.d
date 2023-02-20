module models.systems.entities.configurators.definitions.groups.fields.field;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupFieldEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupFieldEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "dataSourceNumber": StringAttribute, // 
        "fieldGroup": StringAttribute, // 
        "fieldName": StringAttribute, // 
        "sortOrder": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfDefinitions_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongroupfields");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupFieldEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorDefinitionGroupFieldEntity);

    auto entity = ConfiguratorDefinitionGroupFieldEntity;
  }
}