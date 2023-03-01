/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.parameter;

@safe:
import models.systems;

class DSystemParameterEntity : DEntity {
  mixin(EntityThis!("SystemParameterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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