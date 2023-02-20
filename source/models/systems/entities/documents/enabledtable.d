module models.systems.entities.documents.enabledtable;

@safe:
import models.systems;

class DDocumentEnabledTableEntity : DOOPEntity {
  mixin(EntityThis!("DocumentEnabledTableEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
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

version(test_model_administrations) {
  unittest {
    assert(DocumentEnabledTableEntity);

    auto entity = DocumentEnabledTableEntity;
    // TODO more tests
  }
}