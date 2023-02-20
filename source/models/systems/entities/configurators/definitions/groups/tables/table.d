module models.systems.entities.configurators.definitions.groups.tables.table;

@safe:
import models.systems;

// 
class DConfiguratorDefinitionGroupTableEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupTableEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "definitionGroupId": UUIDAttribute, // 
        "dataSourceNumber": StringAttribute, // 
        "relatedTableName": StringAttribute, // 
        "sysRelation": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfTableSelection_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongrouptables");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupTableEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupTableEntity);

    auto entity = ConfiguratorDefinitionGroupTableEntity;
  }
}