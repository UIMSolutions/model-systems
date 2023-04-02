/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.attributes.uuids.entities.elementid;

@safe:
import models.systems;

class DElementIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ElementIdAttribute"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .name("elementId")
      .registerPath("elementId");
  }  
}
mixin(AttributeCalls!("ElementIdAttribute"));

version(test_model_workflows) { unittest {
    testAttribute(new DElementIdAttribute);
    testAttribute(ElementIdAttribute);
  }
}