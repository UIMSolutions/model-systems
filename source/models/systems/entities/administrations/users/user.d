/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.users.user;

@safe:
import models.systems;

// 
class DSystemUserEntity : DEntity {
  mixin(EntityThis!("SystemUserEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "defaultCountryRegion": StringAttribute, // 
        "documentHandlingActive": StringAttribute, // 
        "showAttachmentStatus": StringAttribute, // 
        "email": StringAttribute, // 
        "sendAlertAsEmailMessage": StringAttribute, // 
        "eventPollFrequency": StringAttribute, // 
        "eventPopUpDisplayWhen": StringAttribute, // 
        "eventPopUpLinkDestination": StringAttribute, // 
        "eventPopUps": StringAttribute, // 
        "eventWorkflowShowPopup": StringAttribute, // 
        "showNotificationsInTheMicrosoftDynamicsAX7Client": StringAttribute, // 
        "sendNotificationsInEmail": StringAttribute, // 
        "markEmptyLinks": StringAttribute, // 
        "userID": StringAttribute, // 
        "language": StringAttribute, // 
        "sqmEnabled": StringAttribute, // 
        "sqmGUID": StringAttribute, // 
        "workflowLineItemNotificationFormat": StringAttribute, // 
        "density": StringAttribute, // 
        "theme": StringAttribute, // 
        "startPage": StringAttribute, // 
        "emailProviderID": StringAttribute, // 
        "userName": StringAttribute, // 
        "enabled": StringAttribute, // 
        "company": StringAttribute, // 
        "autoLogOff": StringAttribute, // 
        "securityIdentifier": StringAttribute, // 
        "networkDomain": StringAttribute, // 
        "alias": StringAttribute, // 
        "externalUser": StringAttribute, // 
        "userInfo_language": StringAttribute, // 
        "helplanguage": StringAttribute, // 
        "preferredTimeZone": StringAttribute, // 
        "preferredCalendar": StringAttribute, // 
        "homePageRefreshDuration": StringAttribute, // 
        "globalListPageLinkMode": StringAttribute, // 
        "globalExcelExportMode": StringAttribute, // 
        "userInfo_defaultPartition": StringAttribute, // 
        "globalExcelExportFilePath": StringAttribute, // 
        "preferredLocale": StringAttribute, // 
        "accountType": StringAttribute, // 
        "personName": StringAttribute, // 
        "automaticUrlUpdate": StringAttribute, // 
        "userObjectId": UUIDAttribute, // 
      ])
      .registerPath("system_systems.users")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemUserEntity"));

version(test_model_systsms) { unittest {
    
    assert(SystemUserEntity);
  
  auto entity = SystemUserEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}