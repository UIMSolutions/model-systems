module models.systems.entities.datamanagements.targetmap;

@safe:
import models.systems;

class DDataManagementTargetMapEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTargetMapEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "entity": StringAttribute, //
        "isAutoManual": StringAttribute, //
        "targetDataSourceName": StringAttribute, //
        "targetField": StringAttribute, //
        "targetTable": StringAttribute, //
        "stagingField": StringAttribute, //
        "arrayIndex": StringAttribute, //
        "shortStagingField": StringAttribute, //
        "isRequired": StringAttribute, //
        "isSystem": StringAttribute, //
        "fieldDataTypeValue": StringAttribute, //
        "recVersionValue": StringAttribute, //
        "dataSourceName": StringAttribute, //
        "dataSourceField": StringAttribute, //
        "fieldLength": StringAttribute, //
        "entityLabel": StringAttribute, //
        "fieldAOTName": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.targetmaps");
  }
}
mixin(EntityCalls!("DataManagementTargetMapEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTargetMapEntity);

    auto entity = DataManagementTargetMapEntity;
    // TODO more tests
  }
}