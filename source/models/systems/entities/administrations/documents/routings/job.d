/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.documents.routings.job;

@safe:
import models.systems;

class DDocumentRoutingJobEntity : DEntity {
  mixin(EntityThis!("DocumentRoutingJobEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "jobId": UUIDAttribute, //
        "activityId": UUIDAttribute, //
        "printerName": StringAttribute, //
        "printerPath": StringAttribute, //
        "reportName": StringAttribute, //
        "jobStatus": StringAttribute, //
        "message": StringAttribute, //
        "totalNumberOfPages": StringAttribute, //
        "startProcessTime": StringAttribute, //
        "endProcessTime": StringAttribute, //
        "companyId": UUIDAttribute, //
        "printerId": UUIDAttribute, //
        "backingTable_DocumentRoutingJobRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_documents.routings.jobs")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DocumentRoutingJobEntity"));

version(test_model_systems) { unittest {
    assert(DocumentRoutingJobEntity);

    auto entity = DocumentRoutingJobEntity;
    // TODO more tests
  }
}
