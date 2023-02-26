module models.systems.entities.documents.parameter;

@safe:
import models.systems;

class DDocumentParameterEntity : DEntity {
  mixin(EntityThis!("DocumentParameterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activeTable": StringAttribute, //
        "key": StringAttribute, //
        "maxFileSizeInFileSystem": StringAttribute, //
        "submitToWorkflow": StringAttribute, //
        "webAppsServerURL": StringAttribute, //
        "defaultSharePointServer": StringAttribute, //
        "backingTable_DocuParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_documents.parameters");
  }
}
mixin(EntityCalls!("DocumentParameterEntity"));

version(test_model_systsms) { unittest {
    assert(DocumentParameterEntity);

    auto entity = DocumentParameterEntity;
    
  }
}
