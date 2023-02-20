module models.systems.entities.configurators.definitions.groups.sortorder;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupSortOrderEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupSortOrderEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "definitionGroupId": UUIDAttribute, // 
        "fieldName": StringAttribute, // 
        "sortingNumber": StringAttribute, // 
        "sortOrder": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupSortOrderEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfSortOrder_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_configuratordefinitiongroupsortorders");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupSortOrderEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupSortOrderEntity);

    auto entity = ConfiguratorDefinitionGroupSortOrderEntity;
  }
}