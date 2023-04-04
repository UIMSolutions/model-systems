/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.sods.rule;

@safe:
import models.systems;

// 
class DSecuritySegregationOfDutiesRuleEntity : DEntity {
  mixin(EntityThis!("SecuritySegregationOfDutiesRuleEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "validFrom":  StringAttribute, // 
        "validTo":  StringAttribute, // 
        "name":  StringAttribute, // 
        "firstDuty":  StringAttribute, // 
        "secondDuty":  StringAttribute, // 
        "firstSecurityDutyIdentifier":  StringAttribute, // 
        "firstSecurityDutyName":  StringAttribute, // 
        "secondSecurityDutyIdentifier":  StringAttribute, // 
        "secondSecurityDutyName":  StringAttribute, // 
        "severity":  StringAttribute, // 
        "risk":  StringAttribute, // 
        "mitigation":  StringAttribute, //      
      ])
      .registerPath("system_system.securities.sodrules")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SecuritySegregationOfDutiesRuleEntity"));

version(test_model_systems) { unittest {
    assert(SecuritySegregationOfDutiesRuleEntity);
  
    auto entity = SecuritySegregationOfDutiesRuleEntity;
  }
}