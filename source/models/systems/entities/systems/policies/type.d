module models.systems.entities.systems.policies.type;

@safe:
import models.systems;

// 
class DSystemPolicyTypeEntity : DOOPEntity {
  mixin(EntityThis!("SystemPolicyTypeEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "policyName": StringAttribute, // 
        "purpose": StringAttribute, // 
        "dropDialog": StringAttribute, // 
        "isPolicyReadOnly": StringAttribute, // 
        "isReassignOrganizationSupported": StringAttribute, // 
        "policyType": StringAttribute, // 
        "backingTable_SysPolicyTypeRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.policytypes");
  }
}
mixin(EntityCalls!("SystemPolicyTypeEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemPolicyTypeEntity);
  
    auto entity = SystemPolicyTypeEntity;
  }
}