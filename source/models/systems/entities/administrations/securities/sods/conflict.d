/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.securities.sods.conflict;

@safe:
import models.systems;

// 
class DSystemSegregationOfDutiesConflictEntity : DEntity {
  mixin(EntityThis!("SystemSegregationOfDutiesConflictEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
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
      .registerPath("system_system.securities.sodconflicts")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemSegregationOfDutiesConflictEntity"));

version(test_model_systems) { unittest {
    assert(SystemSegregationOfDutiesConflictEntity);
  
    auto entity = SystemSegregationOfDutiesConflictEntity;
  }
}