module models.systems.entities.documents.routings.clientapp;

@safe:
import models.systems;

class DDocumentRoutingClientAppEntity : DOOPEntity {
  mixin(EntityThis!("DocumentRoutingClientAppEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "clientApplicationId": StringAttribute, //
        "clientApplicationDescription": StringAttribute, //
        "backingTable_DocumentRoutingClientAppRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_documents.routings.clientapps");
  }
}
mixin(EntityCalls!("DocumentRoutingClientAppEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentRoutingClientAppEntity);

    auto entity = DocumentRoutingClientAppEntity;
    // TODO more tests
  }
}