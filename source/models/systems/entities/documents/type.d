module models.systems.entities.documents.type;

@safe:
import models.systems;

class DDocumentTypeEntity : DOOPEntity {
  mixin(EntityThis!("DocumentTypeEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "actionClassName": StringAttribute, //
        "docuStructureType": StringAttribute, //
        "filePlace": StringAttribute, //
        "fileRemovalConfirmation": StringAttribute, //
        "name": StringAttribute, //
        "parameters": StringAttribute, //
        "removeOption": StringAttribute, //
        "typeGroup": StringAttribute, //
        "id": StringAttribute, //
        "host": StringAttribute, //
        "site": StringAttribute, //
        "actionClassId": UUIDAttribute, //
        "folderPath": StringAttribute, //
        "backingTable_DocuTypeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_documents.types");
  }
}
mixin(EntityCalls!("DocumentTypeEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentTypeEntity);

    auto entity = DocumentTypeEntity;
    // TODO more tests
  }
}