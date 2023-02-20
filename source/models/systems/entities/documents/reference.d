module models.systems.entities.documents.reference;

@safe:
import models.systems;

class DDocumentReferenceEntity : DOOPEntity {
  mixin(EntityThis!("DocumentReferenceEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "documentId": UUIDAttribute, //
        "actualCompanyId": UUIDAttribute, //
        "typeId": UUIDAttribute, //
        "refCompanyId": UUIDAttribute, //
        "refRecId": UUIDAttribute, //
        "refTableId": UUIDAttribute, //
        "name": StringAttribute, //
        "restriction": StringAttribute, //
        "notes": StringAttribute, //
        "valueRecId": UUIDAttribute, //
        "docuValueType": StringAttribute, //
        "fileName": StringAttribute, //
        "fileType": StringAttribute, //
        "fileContents": StringAttribute, //
        "defaultAttachment": StringAttribute, //
        "relationship_DocuTypeRelationRelationshipId": UUIDAttribute, //
        "backingTable_DocuRefRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_documents.references");
  }
}
mixin(EntityCalls!("DocumentReferenceEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentReferenceEntity);

    auto entity = DocumentReferenceEntity;
    // TODO more tests
  }
}