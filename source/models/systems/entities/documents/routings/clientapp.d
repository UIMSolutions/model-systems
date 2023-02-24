module models.systems.entities.documents.routings.clientapp;

@safe:
import models.systems;

class DDocumentRoutingClientAppEntity : DEntity {
  mixin(EntityThis!("DocumentRoutingClientAppEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "clientApplicationId": UUIDAttribute, //
        "clientApplicationDescription": StringAttribute, //
        "backingTable_DocumentRoutingClientAppRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_documents.routings.clientapps");
  }
}
mixin(EntityCalls!("DocumentRoutingClientAppEntity"));

version(test_model_systsms) { unittest {
    assert(DocumentRoutingClientAppEntity);

    auto entity = DocumentRoutingClientAppEntity;
    // TODO more tests
  }
}