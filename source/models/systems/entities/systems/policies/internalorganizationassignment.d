/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.policies.internalorganizationassignment;

@safe:
import models.systems;

// Policy organization assignments
class DSystemPolicyInternalOrganizationAssignmentEntity : DEntity {
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
    
    assert(SystemPolicyInternalOrganizationAssignmentEntity);
  
  auto entity = SystemPolicyInternalOrganizationAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}