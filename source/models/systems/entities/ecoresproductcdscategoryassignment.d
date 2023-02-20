module models.systems.entities.ecoresproductcdscategoryassignment;

@safe:
import models.systems;

class DEcoResProductCDSCategoryAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("EcoResProductCDSCategoryAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
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