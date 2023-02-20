module models.systems.entities.documents.routings.job;

@safe:
import models.systems;

class DDocumentRoutingJobEntity : DOOPEntity {
  mixin(EntityThis!("DocumentRoutingJobEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
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
      .registerPath("administration_documents.routings.jobs");
  }
}
mixin(EntityCalls!("DocumentRoutingJobEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentRoutingJobEntity);

    auto entity = DocumentRoutingJobEntity;
    // TODO more tests
  }
}