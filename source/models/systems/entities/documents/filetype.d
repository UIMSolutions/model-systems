module models.systems.entities.documents.filetype;

@safe:
import models.systems;

class DDocumentFileTypesEntity : DEntity {
  mixin(EntityThis!("DocumentFileTypesEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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

version(test_model_systsms) { unittest {
    assert(DocumentFileTypesEntity);

    auto entity = DocumentFileTypesEntity;
    // TODO more tests
  }
}