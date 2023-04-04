/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.documents.filetype;

@safe:
import models.systems;

class DDocumentFileTypesEntity : DEntity {
  mixin(EntityThis!("DocumentFileTypesEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "fileType": StringAttribute, //
        "fileTypeDescription": StringAttribute, //
        "nativelyWebRenderable": StringAttribute, //
        "backingTable_DocuFileTypesRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_documents.filetypes")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DocumentFileTypesEntity"));

version(test_model_systsms) { unittest {
    assert(DocumentFileTypesEntity);

    auto entity = DocumentFileTypesEntity;
    // TODO more tests
  }
}