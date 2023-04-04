/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.cases.association;

@safe:
import models.systems;

class DCaseAssociationEntity : DEntity {
  mixin(EntityThis!("CaseAssociationEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "associationCompany": StringAttribute, // 
        "associationId": UUIDAttribute, // 
        "caseId": UUIDAttribute, // 
        "caseRecId": UUIDAttribute, // 
        "entityType": StringAttribute, // 
        "isPrimary": StringAttribute, // 
        "reference": StringAttribute, // 
        "relationship_CaseDetailEntityRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_caseassociationS")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("CaseAssociationEntity"));

version(test_model_systsms) { unittest {
    assert(CaseAssociationEntity);

    auto entity = CaseAssociationEntity;
  }
}