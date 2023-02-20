module models.systems.entities.securities.sods.rule;

@safe:
import models.systems;

// 
class DSecuritySegregationOfDutiesRuleEntity : DOOPEntity {
  mixin(EntityThis!("SecuritySegregationOfDutiesRuleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
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
      .registerPath("administration_system.securities.sodrules");
  }
}
mixin(EntityCalls!("SecuritySegregationOfDutiesRuleEntity"));

version(test_library) {
  unittest {
    assert(SecuritySegregationOfDutiesRuleEntity);
  
    auto entity = SecuritySegregationOfDutiesRuleEntity;
  }
}