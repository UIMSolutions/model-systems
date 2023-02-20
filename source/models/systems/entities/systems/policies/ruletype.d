module models.systems.entities.systems.policies.ruletype;

@safe:
import models.systems;

// 
class DSystemPolicyRuleTypeEntity : DOOPEntity {
  mixin(EntityThis!("SystemPolicyRuleTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "includeParentRule": StringAttribute, // 
        "isPrecedenceSupported": BooleanAttribute, // 
        "ruleName": StringAttribute, // 
        "policyTypeRel": StringAttribute, // 
        "policyType": StringAttribute, // 
        "policyName": StringAttribute, // 
        "backingTable_SysPolicyRuleTypeRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.policies.ruletypes");
  }
}
mixin(EntityCalls!("SystemPolicyRuleTypeEntity"));

version(test_model_systsms) { unittest {
    assert(APLFeedback);
    assert(SystemPolicyRuleTypeEntity);
  
  auto entity = SystemPolicyRuleTypeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}