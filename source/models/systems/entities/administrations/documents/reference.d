/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.documents.reference;

@safe:
import models.systems;

class DDocumentReferenceEntity : DEntity {
  mixin(EntityThis!("DocumentReferenceEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "documentId": UUIDAttribute, //
        "actualCompanyId": UUIDAttribute, //
        "typeId": UUIDAttribute, //
        "refCompanyId": UUIDAttribute, //
        "refRecId": UUIDAttribute, //
        "refTableId": UUIDAttribute, //
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
      .registerPath("system_documents.references")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DocumentReferenceEntity"));

version(test_model_systsms) { unittest {
    assert(DocumentReferenceEntity);

    auto entity = DocumentReferenceEntity;
    // TODO more tests
  }
}
