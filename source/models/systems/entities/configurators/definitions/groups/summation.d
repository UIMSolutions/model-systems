module models.systems.entities.configurators.definitions.groups.summation;

@safe:
import models.systems;

class DConfiguratorDefinitionGroupSummationEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorDefinitionGroupSummationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "average": StringAttribute, // 
        "averageSelected": StringAttribute, // 
        "definitionGroupId": UUIDAttribute, // 
        "countAll": StringAttribute, // 
        "countSelected": StringAttribute, // 
        "fieldName": StringAttribute, // 
        "sumAll": StringAttribute, // 
        "sumSelected": StringAttribute, // 
        "tableName": StringAttribute, // 
        "relationship_ConfiguratorDefinitionGroupEntityRelationshipId": UUIDAttribute, // 
        "backingTable_ConfSummation_BRRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
       ])
      .registerPath("administration_configuratordefinitiongroupsummation");
  }
}
mixin(EntityCalls!("ConfiguratorDefinitionGroupSummationEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorDefinitionGroupSummationEntity);

    auto entity = ConfiguratorDefinitionGroupSummationEntity;
  }
}