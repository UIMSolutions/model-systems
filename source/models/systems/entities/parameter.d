module models.systems.entities.systems.parameter;

@safe:
import models.systems;

class DSystemParameterEntity : DOOPEntity {
  mixin(EntityThis!("SystemParameterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "maximumRowsOfSSRSReports": StringAttribute, // 
        "systemLanguage": StringAttribute, // 
        "increment": StringAttribute, // 
        "thaiSoftwareSequenceNumber": StringAttribute, // 
        "systemCurrencyCode": StringAttribute, // 
        "systemExchangeRateType": StringAttribute, // 
        "systemExchangeRateTypeId": UUIDAttribute, // 
        "relationship_CurrencyCodeRelationshipId": UUIDAttribute, // 
        "relationship_ExchangeRateRelationshipId": UUIDAttribute, // 
        "backingTable_SystemParametersRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_parameters");
  }
}
mixin(EntityCalls!("SystemParameterEntity"));

version(test_model_systsms) { unittest {
    assert(SystemParameterEntity);
  
    auto entity = SystemParameterEntity;
  }
}