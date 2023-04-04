/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.ecoresproductcdscategoryassignment;

@safe:
import models.systems;

class DEcoResProductCDSCategoryAssignmentEntity : DEntity {
  mixin(EntityThis!("EcoResProductCDSCategoryAssignmentEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "productNumber": StringAttribute, //
        "productCategoryName": StringAttribute, //
        "productCategoryHierarchyName": StringAttribute, //
      ])
      .registerPath("system_documents.types")      
      .routingPath("/systems");
  }
}
mixin(EntityCalls!("EcoResProductCDSCategoryAssignmentEntity"));

version(test_model_systsms) { unittest {
    assert(EcoResProductCDSCategoryAssignmentEntity);

    auto entity = EcoResProductCDSCategoryAssignmentEntity;
    // TODO more tests
  }
}