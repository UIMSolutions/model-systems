module models.systems.entities.datamanagements.datamanagement;

@safe:
import models.systems;

class DDataManagementEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
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

version(test_model_administrations) {
  unittest {
    assert(DataManagementEntity);

    auto entity = DataManagementEntity;
    // TODO more tests
  }
}