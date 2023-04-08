/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.documents.type;

@safe:
import models.systems;

class DDocumentTypeEntity : DEntity {
  mixin(EntityThis!("DocumentTypeEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "actionClassName": StringAttribute, //
        "docuStructureType": StringAttribute, //
        "filePlace": StringAttribute, //
        "fileRemovalConfirmation": StringAttribute, //
        
        "parameters": StringAttribute, //
        "removeOption": StringAttribute, //
        "typeGroup": StringAttribute, //
        "host": StringAttribute, //
        "site": StringAttribute, //
        "actionClassId": UUIDAttribute, //
        "folderPath": StringAttribute, //
        "backingTable_DocuTypeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_documents.types")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DocumentTypeEntity"));

version(test_model_systsms) { unittest {
    assert(DocumentTypeEntity);

    auto entity = DocumentTypeEntity;
    // TODO more tests
  }
}
