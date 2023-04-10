/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.policies.type;

@safe:
import models.systems;

// 
class DSystemPolicyTypeEntity : DEntity {
  mixin(EntityThis!("SystemPolicyTypeEntity"));

  override void initialize(Json configSettings = Json(null)) {
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
      .registerPath("system_systems.policytypes")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemPolicyTypeEntity"));

version(test_model_systsms) { unittest {
    assert(SystemPolicyTypeEntity);
  
    auto entity = SystemPolicyTypeEntity;
  }
}