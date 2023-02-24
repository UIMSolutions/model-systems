module models.systems.entities.cases.dependency;

@safe:
import models.systems;

class DCaseDependencyEntity : DEntity {
  mixin(EntityThis!("CaseDependencyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "case": StringAttribute, // 
        "parentCase": StringAttribute, // 
        "caseId": UUIDAttribute, // 
        "parentCaseId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_casedependencies");
  }
}
mixin(EntityCalls!("CaseDependencyEntity"));

version(test_model_systsms) { unittest {
    assert(CaseDependencyEntity);

    auto entity = CaseDependencyEntity;
  }
}