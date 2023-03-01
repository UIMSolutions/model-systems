/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.policies.ruletype;

@safe:
import models.systems;

// 
class DSystemPolicyRuleTypeEntity : DEntity {
  mixin(EntityThis!("SystemPolicyRuleTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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
    
    assert(SystemPolicyRuleTypeEntity);
  
  auto entity = SystemPolicyRuleTypeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}