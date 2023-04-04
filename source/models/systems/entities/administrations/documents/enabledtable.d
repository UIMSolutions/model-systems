/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.documents.enabledtable;

@safe:
import models.systems;

class DDocumentEnabledTableEntity : DEntity {
  mixin(EntityThis!("DocumentEnabledTableEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "allowEditAlways": StringAttribute, //
        "tableEnabledId": UUIDAttribute, //
        "tableName": StringAttribute, //
        "backingTable_DocuTableEnabledRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_documents.enabledtables")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DocumentEnabledTableEntity"));

version(test_model_systsms) { unittest {
    assert(DocumentEnabledTableEntity);

    auto entity = DocumentEnabledTableEntity;
    // TODO more tests
  }
}