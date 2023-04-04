/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.datamanagements.templates.template_;

@safe:
import models.systems;

class DDataManagementTemplateEntity : DEntity {
  mixin(EntityThis!("DataManagementTemplateEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "templateId": UUIDAttribute, //
        "description": StringAttribute, //
      ])
      .registerPath("system_datamanagements.templates")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("DataManagementTemplateEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementTemplateEntity);

    auto entity = DataManagementTemplateEntity;
    // TODO more tests
  }
}