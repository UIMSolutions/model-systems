module models.systems.entities.systems.policies.policy;

@safe:
import models.systems;

class DSystemPolicyEntity : DOOPEntity {
  mixin(EntityThis!("SystemPolicyEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "isPolicyActive": BooleanAttribute, // 
        "policyName": StringAttribute, // 
        "policyTypeRecId": UUIDAttribute, // 
        "policyType": StringAttribute, // 
        "backingTable_SysPolicyRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.policies");
  }
}
mixin(EntityCalls!("SystemPolicyEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemPolicyEntity);
  
    auto entity = SystemPolicyEntity;
  }
}