/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.documents.routings.printer;

@safe:
import models.systems;

class DDocumentRoutingPrinterEntity : DEntity {
  mixin(EntityThis!("DocumentRoutingPrinterEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "clientApp": StringAttribute, //
        "printer": StringAttribute, //
        "printerName": StringAttribute, //
        "printerDescription": StringAttribute, //
        "printerPath": StringAttribute, //
        "printerIsActive": StringAttribute, //
        "printerId": UUIDAttribute, //
        "printerCompanyId": UUIDAttribute, //
        "clientApplicationId": UUIDAttribute, //
        "clientApplicationDescription": StringAttribute, //
        "backingTable_DocumentRoutingPrinterAppAssociationRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_documents.routings.printers")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DocumentRoutingPrinterEntity"));

version(test_model_systems) { unittest {
    assert(DocumentRoutingPrinterEntity);

    auto entity = DocumentRoutingPrinterEntity;
    // TODO more tests
  }
}
