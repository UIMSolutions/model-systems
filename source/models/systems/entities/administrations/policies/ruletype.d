/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.policies.ruletype;

@safe:
import models.systems;

// 
class DSystemPolicyRuleTypeEntity : DEntity {
  mixin(EntityThis!("SystemPolicyRuleTypeEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "includeParentRule": StringAttribute, // 
        "isPrecedenceSupported": BooleanAttribute, // 
        "policyTypeRel": StringAttribute, // 
        "policyType": StringAttribute, // 
        "policyName": StringAttribute, // 
        "backingTable_SysPolicyRuleTypeRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_systems.policies.ruletypes")      
      .routingPath("/systems/administrations");
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