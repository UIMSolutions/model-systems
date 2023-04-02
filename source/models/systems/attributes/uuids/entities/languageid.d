/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.attributes.uuids.entities.languageid;

@safe:
import models.systems;

class DLanguageIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("LanguageIdAttribute"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .name("languageId")
      .registerPath("languageId");
  }  
}
mixin(AttributeCalls!("LanguageIdAttribute"));

version(test_model_workflows) { unittest {
    testAttribute(new DLanguageIdAttribute);
    testAttribute(LanguageIdAttribute);
  }
}