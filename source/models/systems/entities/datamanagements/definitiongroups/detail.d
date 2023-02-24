module models.systems.entities.datamanagements.definitiongroups.detail;

@safe:
import models.systems;

class DDataManagementDefinitionGroupDetailEntity : DEntity {
  mixin(EntityThis!("DataManagementDefinitionGroupDetailEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "definitionGroupId": UUIDAttribute, //
        "entityName": StringAttribute, //
        "excelSheetName": StringAttribute, //
        "runBusinessLogic": StringAttribute, //
        "runBusinessValidation": StringAttribute, //
        "sampleFilePath": StringAttribute, //
        "inputFilePath": StringAttribute, //
        "sourceFormat": StringAttribute, //
        "validationStatus": StringAttribute, //
        "executionUnit": StringAttribute, //
        "levelInExecutionUnit": StringAttribute, //
        "sequenceInLevel": StringAttribute, //
        "failLevelOnError": StringAttribute, //
        "failExecutionUnitOnError": StringAttribute, //
        "disable": StringAttribute, //
        "queryData": StringAttribute, //
        "sysModule": StringAttribute, //
        "tags": StringAttribute, //
        "entityCategory": StringAttribute, //
        "parentEntityName": StringAttribute, //
        "autoGenerateMapping": StringAttribute, //
        "queryForODBC": StringAttribute, //
        "runValidateField": StringAttribute, //
        "entityXMLName": StringAttribute, //
        "isTransformed": StringAttribute, //
        "sampleFilePathOriginal": StringAttribute, //
        "skipStaging": StringAttribute, //
        "packageFilePath": StringAttribute, //
        "defaultRefreshType": StringAttribute, //
        "relationship_DefinitionGroupDetailsRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_datamanagements.definitiongroupdetails");
  }
}
mixin(EntityCalls!("DataManagementDefinitionGroupDetailEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementDefinitionGroupDetailEntity);

    auto entity = DataManagementDefinitionGroupDetailEntity;
    // TODO more tests
  }
}