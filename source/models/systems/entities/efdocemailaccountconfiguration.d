module models.systems.entities.efdocemailaccountconfiguration;

@safe:
import models.systems;

class DEFDocEmailAccountConfigurationEntity : DOOPEntity {
  mixin(EntityThis!("EFDocEmailAccountConfigurationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "serverAddress": StringAttribute, //
        "port": StringAttribute, //
        "useSsl": StringAttribute, //
        "username": StringAttribute, //
        "backingTable_EFDocumentEmailAccount_BRRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_efdocemailaccount.configurations");
  }
}
mixin(EntityCalls!("EFDocEmailAccountConfigurationEntity"));

version(test_model_systsms) { unittest {
    assert(EFDocEmailAccountConfigurationEntity);

    auto entity = EFDocEmailAccountConfigurationEntity;
    // TODO more tests
  }
}