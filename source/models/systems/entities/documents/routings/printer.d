module models.systems.entities.documents.routings.printer;

@safe:
import models.systems;

class DDocumentRoutingPrinterEntity : DOOPEntity {
  mixin(EntityThis!("DocumentRoutingPrinterEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "clientApp": StringAttribute, //
        "printer": StringAttribute, //
        "printerName": StringAttribute, //
        "printerDescription": StringAttribute, //
        "printerPath": StringAttribute, //
        "printerIsActive": StringAttribute, //
        "printerId": UUIDAttribute, //
        "printerCompanyId": UUIDAttribute, //
        "clientApplicationId": UUIDAttribute, //
        "clientApplicationDescription": StringAttribute, //
        "backingTable_DocumentRoutingPrinterAppAssociationRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_documents.routings.printers");
  }
}
mixin(EntityCalls!("DocumentRoutingPrinterEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentRoutingPrinterEntity);

    auto entity = DocumentRoutingPrinterEntity;
    // TODO more tests
  }
}