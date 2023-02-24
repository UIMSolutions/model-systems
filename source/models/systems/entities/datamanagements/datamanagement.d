module models.systems.entities.datamanagements.datamanagement;

@safe:
import models.systems;

class DDataManagementEntity : DEntity {
  mixin(EntityThis!("DataManagementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "entityName": StringAttribute, //
        "stagingTableName": StringAttribute, //
        "targetName": StringAttribute, //
        "category": StringAttribute, //
        "modules": StringAttribute, //
        "tags": StringAttribute, //
        "isShared": StringAttribute, //
        "countryRegionCodes": StringAttribute, //
        "configurationKeyName": StringAttribute, //
        "entityKey": StringAttribute, //
        "recVersionValue": StringAttribute, //
        "changeTrackingType": StringAttribute, //
      ])
      .registerPath("administration_datamanagements");
  }
}
mixin(EntityCalls!("DataManagementEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementEntity);

    auto entity = DataManagementEntity;
    // TODO more tests
  }
}