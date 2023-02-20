module models.systems.entities.datamanagements.executionjobs.detail;

@safe:
import models.systems;

class DDataManagementExecutionJobDetailEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementExecutionJobDetailEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "definitionGroupId": UUIDAttribute, //
        "entityName": StringAttribute, //
        "jobId": UUIDAttribute, //
        "stagingEndDateTime": StringAttribute, //
        "excelSheetName": StringAttribute, //
        "executeTargetStep": StringAttribute, //
        "firstRowIsHeader": StringAttribute, //
        "filePath": StringAttribute, //
        "ignoreError": StringAttribute, //
        "stagingRecordsToBeProcessedCount": StringAttribute, //
        "parallelTaskCount": StringAttribute, //
        "stagingRecordsCreatedCount": StringAttribute, //
        "targetRecordsCreatedCount": StringAttribute, //
        "targetRecordsUpdatedCount": StringAttribute, //
        "createErrorFile": StringAttribute, //
        "runBusinessLogic": StringAttribute, //
        "runBusinessValidation": StringAttribute, //
        "sequenceNumber": StringAttribute, //
        "numberOfRowsToSkip": StringAttribute, //
        "sourceFormat": StringAttribute, //
        "stagingStatus": StringAttribute, //
        "stagingStartDateTime": StringAttribute, //
        "targetStatus": StringAttribute, //
        "targetEndDateTime": StringAttribute, //
        "targetStartDateTime": StringAttribute, //
        "executionUnit": StringAttribute, //
        "levelInExecutionUnit": StringAttribute, //
        "sequenceInLevel": StringAttribute, //
        "failExecutionUnitOnError": StringAttribute, //
        "failLevelOnError": StringAttribute, //
        "relationship_ExecutionJobDetailsRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_datamanagements.executionjobs");
  }
}
mixin(EntityCalls!("DataManagementExecutionJobDetailEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementExecutionJobDetailEntity);

    auto entity = DataManagementExecutionJobDetailEntity;
    // TODO more tests
  }
}