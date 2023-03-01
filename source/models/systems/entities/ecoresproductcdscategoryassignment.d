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

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "productNumber": StringAttribute, //
        "productCategoryName": StringAttribute, //
        "productCategoryHierarchyName": StringAttribute, //
      ])
      .registerPath("administration_documents.types");
  }
}
mixin(EntityCalls!("EcoResProductCDSCategoryAssignmentEntity"));

version(test_model_systsms) { unittest {
    assert(EcoResProductCDSCategoryAssignmentEntity);

    auto entity = EcoResProductCDSCategoryAssignmentEntity;
    // TODO more tests
  }
}