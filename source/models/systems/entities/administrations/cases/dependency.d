/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.cases.dependency;

@safe:
import models.systems;

class DCaseDependencyEntity : DEntity {
  mixin(EntityThis!("CaseDependencyEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "case": StringAttribute, // 
        "parentCase": StringAttribute, // 
        "caseId": UUIDAttribute, // 
        "parentCaseId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_casedependencies")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("CaseDependencyEntity"));

version(test_model_systsms) { unittest {
    assert(CaseDependencyEntity);

    auto entity = CaseDependencyEntity;
  }
}