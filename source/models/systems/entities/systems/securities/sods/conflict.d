module models.systems.entities.securities.sods.conflict;

@safe:
import models.systems;

// 
class DSystemSegregationOfDutiesConflictEntity : DOOPEntity {
  mixin(EntityThis!("SystemSegregationOfDutiesConflictEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "segregationOfDutiesRule":  StringAttribute, // 
        "segregationOfDutiesRuleValidFrom":  StringAttribute, // 
        "segregationOfDutiesRuleValidTo":  StringAttribute, // 
        "segregationOfDutiesRuleName":  StringAttribute, // 
        "user":  StringAttribute, // 
        "existingRole":  StringAttribute, // 
        "existingRoleIdentifier":  StringAttribute, // 
        "existingRoleName":  StringAttribute, // 
        "existingDuty":  StringAttribute, // 
        "existingDutyIdentifier":  StringAttribute, // 
        "existingDutyName":  StringAttribute, // 
        "newRole":  StringAttribute, // 
        "newRoleIdentifier":  StringAttribute, // 
        "newRoleName":  StringAttribute, // 
        "newDuty":  StringAttribute, // 
        "newDutyIdentifier":  StringAttribute, // 
        "newDutyName":  StringAttribute, // 
        "assignmentMode":  StringAttribute, // 
        "reasonForOverride":  StringAttribute, // 
        "resolution":  StringAttribute, // 
      ])
      .registerPath("administration_system.securities.sodconflicts");
  }
}
mixin(EntityCalls!("SystemSegregationOfDutiesConflictEntity"));

version(test_library) {
  unittest {
    assert(SystemSegregationOfDutiesConflictEntity);
  
    auto entity = SystemSegregationOfDutiesConflictEntity;
  }
}