/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.brazilian.parameter;

@safe:
import models.systems;

class DBrazilianParametersEntity : DEntity {
  mixin(EntityThis!("BrazilianParametersEntity"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .addValues([
        "approximateTaxesPrintOnlyFinalUser": StringAttribute, //
        "approximateTaxesSource": StringAttribute, //
        "approximateTaxesText": StringAttribute, //
        "basicTaxValueForCOFINSInCumulativeRegimen": StringAttribute, //
        "basicTaxValueForCOFINSInNonCumulativeRegimen": StringAttribute, //
        "basicTaxValueForPISInCumulativeRegimen": StringAttribute, //
        "basicTaxValueForPISInNonCumulativeRegimen": StringAttribute, //
        "fiscalDocumentEnableFixIssueDate": StringAttribute, //
        "taxComplementaryFiscalDocumentSalesTaxCodeForCOFINS": StringAttribute, //
        "taxComplementaryFiscalDocumentSalesTaxCodeForPIS": StringAttribute, //
        "complementaryFiscalDocumentSourceText": StringAttribute, //
        "financialDimensionForCostCenterRecId": UUIDAttribute, //
        "enableCFPSCode": StringAttribute, //
        "ledgerIntegrationStatus": StringAttribute, //
        "fciText": StringAttribute, //
        "taxFiscalDocumentItem": StringAttribute, //
        "fiscalDocumentTextDocumentType": StringAttribute, //
        "financialDimensionForFiscalEstablishmentRecId": UUIDAttribute, //
        "freeTextInvoiceItem": StringAttribute, //
        "freeTextInvoiceServiceItem": StringAttribute, //
        "importDeclarationText": StringAttribute, //
        "importDeclarationLineAmountIsBasedOn": StringAttribute, //
        "goodsToConsumeProductType": StringAttribute, //
        "referencedFiscalDocumentModel02SalesTaxCodeForCOFINS": StringAttribute, //
        "referencedFiscalDocumentModel02SalesTaxCodeForICMS": StringAttribute, //
        "referencedFiscalDocumentModel02SalesTaxCodeForPIS": StringAttribute, //
        "projectFiscalDocumentUnit": StringAttribute, //
        "purchasePrimaryMethodOfPaymentDescription": StringAttribute, //
        "purchasePrimaryMethodOfPayment": StringAttribute, //
        "requestForQuotationOperationTypeRecId": UUIDAttribute, //
        "purchaseRequisitionOperationTypeRecId": UUIDAttribute, //
        "salesPrimaryMethodOfPaymentDescription": StringAttribute, //
        "salesPrimaryMethodOfPayment": StringAttribute, //
        "suframaTextForIssueFiscalDocument": StringAttribute, //
        "taxFiscalDocumentsSalesTaxCodeForCOFINS": StringAttribute, //
        "taxFiscalDocumentsSalesTaxCodeForPIS": StringAttribute, //
        "fiscalDocumentTextForWithholdingTax": StringAttribute, //
        "volumeQuantity": StringAttribute, //
        "volumeType": StringAttribute, //
        "icmsTaxationCodeOverridesICMSST": StringAttribute, //
        "purchaseRequisitionOperationType": StringAttribute, //
        "requestForQuotationOperationType": StringAttribute, //
        "financialDimensionForCostCenter": StringAttribute, //
        "financialDimensionForFiscalEstablishment": StringAttribute, //
        "retailApproximateTaxValueTextId": UUIDAttribute, //
        "backingTable_BrazilParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("system_brazilian.electronicreportingparameters")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("BrazilianParametersEntity"));

version(test_model_systsms) { unittest {
    assert(BrazilianParametersEntity);

    auto entity = BrazilianParametersEntity;
  }
}