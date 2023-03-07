/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.policies.policy;

@safe:
import models.systems;

class DSystemPolicyEntity : DEntity {
  mixin(EntityThis!("SystemPolicyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "isActive": BooleanAttribute, // 
        "typeRecId": UUIDAttribute, // 
        "type": StringAttribute, // Type of policy
        "backingTable_SysPolicyRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.policies");
  }
}
mixin(EntityCalls!("SystemPolicyEntity"));

version(test_model_systsms) { unittest {
    assert(SystemPolicyEntity);
  
    auto entity = SystemPolicyEntity;
  }
}