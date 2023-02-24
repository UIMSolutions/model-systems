module models.systems.entities.systems.emailparameter;

@safe:
import models.systems;

// 
class DSystemEmailParameterEntity : DEntity {
  mixin(EntityThis!("SystemEmailParameterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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
      .registerPath("administration_systems.emailparameters");
  }
}
mixin(EntityCalls!("SystemEmailParameterEntity"));

version(test_model_systsms) { unittest {
    assert(APLFeedback);
    assert(SystemEmailParameterEntity);
  
  auto entity = SystemEmailParameterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}