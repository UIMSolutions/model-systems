/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.definitiongroups.detail;

@safe:
import models.systems;

class DDataManagementDefinitionGroupDetailEntity : DEntity {
  mixin(EntityThis!("DataManagementDefinitionGroupDetailEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
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
      .registerPath("system_datamanagements.definitiongroupdetails")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementDefinitionGroupDetailEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementDefinitionGroupDetailEntity);

    auto entity = DataManagementDefinitionGroupDetailEntity;
    // TODO more tests
  }
}