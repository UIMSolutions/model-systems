module models.systems.entities.documents.enabledtable;

@safe:
import models.systems;

class DDocumentEnabledTableEntity : DEntity {
  mixin(EntityThis!("DocumentEnabledTableEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "allowEditAlways": StringAttribute, //
        "tableEnabledId": UUIDAttribute, //
        "tableName": StringAttribute, //
        "backingTable_DocuTableEnabledRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_documents.enabledtables");
  }
}
mixin(EntityCalls!("DocumentEnabledTableEntity"));

version(test_model_systsms) { unittest {
    assert(DocumentEnabledTableEntity);

    auto entity = DocumentEnabledTableEntity;
    // TODO more tests
  }
}