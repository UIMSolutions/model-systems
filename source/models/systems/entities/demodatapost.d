module models.systems.entities.demodatapost;

@safe:
import models.systems;

class DDemoDataPostEntity : DOOPEntity {
  mixin(EntityThis!("DemoDataPostEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
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

version(test_model_administrations) {
  unittest {
    assert(DemoDataPostEntity);

    auto entity = DemoDataPostEntity;
    // TODO more tests
  }
}