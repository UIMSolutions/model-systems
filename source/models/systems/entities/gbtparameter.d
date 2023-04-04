/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.gbtparameter;

@safe:
import models.systems;

class DGBTParameterEntity : DEntity {
  mixin(EntityThis!("GBTParameterEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "acquisitionLedgerDimension": StringAttribute, //
        "balanceSheet": StringAttribute, //
        "cashflowAdditional": StringAttribute, //
        "cashflowCodeFormat": StringAttribute, //
        "cashFlowDimension": StringAttribute, //
        "cashflowMajorSheet": StringAttribute, //
        "changesOfOwnersEquity": StringAttribute, //
        "depreciationLedgerDimension": StringAttribute, //
        "disposalLedgerDimension": StringAttribute, //
        "fixedAssetGroupCodeFormat": StringAttribute, //
        "incomeSheet": StringAttribute, //
        "industry": StringAttribute, //
        "key": StringAttribute, //
        "orgNumber": StringAttribute, //
        "orgType": StringAttribute, //
        "erModelName": StringAttribute, //
        "acquisitionLedgerDimensionDisplayValue": StringAttribute, //
        "depreciationLedgerDimensionDisplayValue": StringAttribute, //
        "disposalLedgerDimensionDisplayValue": StringAttribute, //
        "relationship_AcquisitionLedgerDimensionCombinationRelationshipId": StringAttribute, //
        "relationship_DepreciationLedgerDimensionCombinationRelationshipId": StringAttribute, //
        "relationship_DisposalLedgerDimensionCombinationRelationshipId": StringAttribute, //
        "backingTable_GBTParameters_CNRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("system_gbtparameters")      
      .routingPath("/systems");
  }
}
mixin(EntityCalls!("GBTParameterEntity"));

version(test_model_systsms) { unittest {
    assert(GBTParameterEntity);
  
    auto entity = GBTParameterEntity;
  }
}