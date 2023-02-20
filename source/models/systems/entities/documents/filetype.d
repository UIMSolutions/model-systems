module models.systems.entities.documents.filetype;

@safe:
import models.systems;

class DDocumentFileTypesEntity : DOOPEntity {
  mixin(EntityThis!("DocumentFileTypesEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "fileType": StringAttribute, //
        "fileTypeDescription": StringAttribute, //
        "nativelyWebRenderable": StringAttribute, //
        "backingTable_DocuFileTypesRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_documents.filetypes");
  }
}
mixin(EntityCalls!("DocumentFileTypesEntity"));

version(test_model_administrations) {
  unittest {
    assert(DocumentFileTypesEntity);

    auto entity = DocumentFileTypesEntity;
    // TODO more tests
  }
}