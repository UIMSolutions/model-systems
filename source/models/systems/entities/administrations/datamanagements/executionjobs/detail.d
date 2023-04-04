/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.executionjobs.detail;

@safe:
import models.systems;

class DDataManagementExecutionJobDetailEntity : DEntity {
  mixin(EntityThis!("DataManagementExecutionJobDetailEntity"));

  override void initialize(Json configSettings = Json(null)) {
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
      .registerPath("system_datamanagements.executionjobs")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementExecutionJobDetailEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementExecutionJobDetailEntity);

    auto entity = DataManagementExecutionJobDetailEntity;
    // TODO more tests
  }
}