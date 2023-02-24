module models.systems.entities.systems.policies.type;

@safe:
import models.systems;

// 
class DSystemPolicyTypeEntity : DEntity {
  mixin(EntityThis!("SystemPolicyTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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

version(test_model_systsms) { unittest {
    assert(SystemPolicyTypeEntity);
  
    auto entity = SystemPolicyTypeEntity;
  }
}