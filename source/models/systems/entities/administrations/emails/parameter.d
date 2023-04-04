/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.emails.parameter;

@safe:
import models.systems;

// 
class DSystemEmailParameterEntity : DEntity {
  mixin(EntityThis!("SystemEmailParameterEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "maximumEmailAttachmentSize": StringAttribute, // 
        "smtpUseNTLM": StringAttribute, // 
        "smtpPortNumber": StringAttribute, // 
        "smtpRelayServerName": StringAttribute, // 
        "smtpUserName": StringAttribute, // 
        "smtpRequireSSL": StringAttribute, // 
        "mailerNonInteractive": StringAttribute, // 
        "mailerInteractiveEnabled": StringAttribute, // 
        "backingTable_SysEmailParametersRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("system_systems.emailparameters")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("SystemEmailParameterEntity"));

version(test_model_systsms) { unittest {
    
    assert(SystemEmailParameterEntity);
  
  auto entity = SystemEmailParameterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}