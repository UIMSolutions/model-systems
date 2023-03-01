/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.policies.organization;

@safe:
import models.systems;

// Policy organization
class DSystemPolicyOrganizationEntity : DEntity {
  mixin(EntityThis!("SystemPolicyOrganizationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "hierarchyType": StringAttribute, // 
        "hierarchyName": StringAttribute, // 
        "organization": StringAttribute, // 
        "partyNumber": StringAttribute, // 
        "policy": StringAttribute, // 
        "policyName": StringAttribute, // 
        "policyTypeRel": StringAttribute, // 
        "policyType": StringAttribute, // 
        "validFrom": StringAttribute, // 
        "validTo": StringAttribute, // 
        "backingTable_SysPolicyOrganizationRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_systems.policies.organizations");
  }
}
mixin(EntityCalls!("SystemPolicyOrganizationEntity"));

version(test_model_systsms) { unittest {
    
    assert(SystemPolicyOrganizationEntity);
  
  auto entity = SystemPolicyOrganizationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}