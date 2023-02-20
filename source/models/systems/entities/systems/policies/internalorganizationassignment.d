module models.systems.entities.systems.policies.internalorganizationassignment;

@safe:
import models.systems;

// Policy organization assignments
class DSystemPolicyInternalOrganizationAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("SystemPolicyInternalOrganizationAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "validFrom": StringAttribute, // 
        "validTo": StringAttribute, // 
        "policyName": StringAttribute, // 
        "policyType": StringAttribute, // 
        "organizationHierarchyName": StringAttribute, // 
        "legalEntityId": UUIDAttribute, // 
        "operatingUnitNumber": StringAttribute, // 
        "backingTable_SysPolicyOrganizationRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.policies.internalorganizationassignment");
  }
}
mixin(EntityCalls!("SystemPolicyInternalOrganizationAssignmentEntity"));

version(test_model_systsms) { unittest {
    assert(APLFeedback);
    assert(SystemPolicyInternalOrganizationAssignmentEntity);
  
  auto entity = SystemPolicyInternalOrganizationAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}