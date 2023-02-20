module models.systems.entities.brazilian.electronicreportingparameter;

@safe:
import models.systems;

class DBrazilianElectronicReportingParametersEntity : DOOPEntity {
  mixin(EntityThis!("BrazilianElectronicReportingParametersEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
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

version(test_model_administrations) {
  unittest {
    assert(BrazilianElectronicReportingParametersEntity);

    auto entity = BrazilianElectronicReportingParametersEntity;
  }
}