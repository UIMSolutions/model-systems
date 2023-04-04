/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.documents.parameter;

@safe:
import models.systems;

class DDocumentParameterEntity : DEntity {
  mixin(EntityThis!("DocumentParameterEntity"));

  override void initialize(Json configSettings = Json(null)) {
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
      .registerPath("system_documents.parameters")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DocumentParameterEntity"));

version(test_model_systsms) { unittest {
    assert(DocumentParameterEntity);

    auto entity = DocumentParameterEntity;
    
  }
}
