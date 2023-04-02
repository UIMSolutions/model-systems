/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.attributes.uuids.entities.conditionid;

@safe:
import models.systems;

class DConditionIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ConditionIdAttribute"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .name("conditionId")
      .registerPath("conditionId");
  }  
}
mixin(AttributeCalls!("ConditionIdAttribute"));

version(test_model_workflows) { unittest {
    testAttribute(new DConditionIdAttribute);
    testAttribute(ConditionIdAttribute);
  }
}