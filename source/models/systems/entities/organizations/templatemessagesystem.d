/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.organizations.templatemessagesystem;

@safe:
import models.systems;

class DEmailTemplateMessageSystemEntity : DEntity {
  mixin(EntityThis!("EmailTemplateMessageSystemEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
				"emailId": StringAttribute, //
				"language": StringAttribute, //
				"layout": StringAttribute, //
				"email": StringAttribute, //
				"subject": StringAttribute, //
				"xsltTransform": StringAttribute, //
				"emailTemplateString": StringAttribute, //
				"relationship_EmailTemplateRelationshipId": StringAttribute, //
				"backingTable_SysEmailMessageSystemTableRelationshipId": StringAttribute, //
      ])
      .registerPath("system_emails.templatemessagesystems")      
      .routingPath("/systems/organizations");
  }
}
mixin(EntityCalls!("EmailTemplateMessageSystemEntity"));