module models.systems.entities.configurators.definitions.groups.tables.relation;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupTableRelationEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupTableRelationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, // 
        "fixedValue": StringAttribute, // 
        "relatedField": StringAttribute, // 
        "relatedTable": StringAttribute, // 
        "relationshipType": StringAttribute, // 
        "sourceFieldName": StringAttribute, // 
        "sourceTableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfRelations_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongrouptablerelation");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupTableRelationEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorDefinitionGroupTableRelationEntity);

    auto entity = ConfiguratorDefinitionGroupTableRelationEntity;
  }
}