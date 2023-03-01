/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.efdocemailaccountconfiguration;

@safe:
import models.systems;

class DEFDocEmailAccountConfigurationEntity : DEntity {
  mixin(EntityThis!("EFDocEmailAccountConfigurationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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