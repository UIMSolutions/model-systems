module models.systems.entities.datamanagements.definitiongroups.group;

@safe:
import models.systems;

class DDataManagementDefinitionGroupEntity : DEntity {
  mixin(EntityThis!("DataManagementDefinitionGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "name": StringAttribute, // 
        "description": StringAttribute, // 
        "operationType": StringAttribute, // 
        "projectCategory": StringAttribute, // 
        "generateDataPackage": StringAttribute, // 
        "truncateEntityData": StringAttribute, // 
      ])
      .registerPath("administration_datamanagements.definitiongroups");
  }
}
mixin(EntityCalls!("DataManagementDefinitionGroupEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementDefinitionGroupEntity);

    auto entity = DataManagementDefinitionGroupEntity;
    // TODO more tests
  }
}