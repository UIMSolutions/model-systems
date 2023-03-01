/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.brazilian.electronicreportingparameter;

@safe:
import models.systems;

class DBrazilianElectronicReportingParametersEntity : DEntity {
  mixin(EntityThis!("BrazilianElectronicReportingParametersEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "reportType": StringAttribute, //
        "erModelMappingTable": StringAttribute, //
        "modelMappingName": StringAttribute, //
        "solutionName": StringAttribute, //
        "vendorUrl": StringAttribute, //
        "backingTable_BrazilianElectronicReportingParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_brazilian.electronicreportingparameters");
  }
}
mixin(EntityCalls!("BrazilianElectronicReportingParametersEntity"));

version(test_model_systsms) { unittest {
    assert(BrazilianElectronicReportingParametersEntity);

    auto entity = BrazilianElectronicReportingParametersEntity;
  }
}