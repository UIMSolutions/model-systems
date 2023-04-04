/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.documents.routings.clientapp;

@safe:
import models.systems;

class DDocumentRoutingClientAppEntity : DEntity {
  mixin(EntityThis!("DocumentRoutingClientAppEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "clientApplicationId": UUIDAttribute, //
        "clientApplicationDescription": StringAttribute, //
        "backingTable_DocumentRoutingClientAppRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_documents.routings.clientapps")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DocumentRoutingClientAppEntity"));

version(test_model_systems) { unittest {
    assert(DocumentRoutingClientAppEntity);

    auto entity = DocumentRoutingClientAppEntity;
    // TODO more tests
  }
}
