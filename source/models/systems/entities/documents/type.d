/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.documents.type;

@safe:
import models.systems;

class DDocumentTypeEntity : DEntity {
  mixin(EntityThis!("DocumentTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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

version(test_model_systsms) { unittest {
    assert(DocumentTypeEntity);

    auto entity = DocumentTypeEntity;
    // TODO more tests
  }
}