/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.demodatapost;

@safe:
import models.systems;

class DDemoDataPostEntity : DEntity {
  mixin(EntityThis!("DemoDataPostEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "demoDataJob": StringAttribute, //
        "lineNum": StringAttribute, //
        "document": StringAttribute, //
        "documentTarget": StringAttribute, //
        "fromDocument": StringAttribute, //
        "toDocument": StringAttribute, //
        "startDate": StringAttribute, //
        "endDate": StringAttribute, //
        "processOnImport": StringAttribute, //
        "demoDataJobStatus": StringAttribute, //
        "dataProjectId": UUIDAttribute, //
        "backingTable_DemoDataPostRunDocumentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_demodataposts");
  }
}
mixin(EntityCalls!("DemoDataPostEntity"));

version(test_model_systsms) { unittest {
    assert(DemoDataPostEntity);

    auto entity = DemoDataPostEntity;
    // TODO more tests
  }
}