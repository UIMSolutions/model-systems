/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.organizations.templatesystem;

@safe:
import models.systems;

class DEmailTemplateSystemEntity : DEntity {
  mixin(EntityThis!("EmailTemplateSystemEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"batchGroup": StringAttribute, //
				"defaultLanguage": StringAttribute, //
				"emailId": StringAttribute, //
				"priority": StringAttribute, //
				"senderAddress": StringAttribute, //
				"senderName": StringAttribute, //
				"backingTable_SysEmailSystemTableRelationshipId": StringAttribute, //
      ])
      .registerPath("system_emails.templatesystems")      
      .routingPath("/systems/organizations");
  }
}
mixin(EntityCalls!("EmailTemplateSystemEntity"));