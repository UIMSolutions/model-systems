module models.systems.entities.configurators.layouts.line;

@safe:
import models.systems;

class DConfiguratorLayoutLineEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorLayoutLineEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "batchId": UUIDAttribute, //
        "batchRecordType": StringAttribute, //
        "recordSize": StringAttribute, //
        "recordName": StringAttribute, //
        "hide": StringAttribute, //
        "layoutGroupId": UUIDAttribute, //
        "lineNumber": StringAttribute, //
        "recordType": StringAttribute, //
        "segment": StringAttribute, //
        "relationship_ConfiguratorLayoutGroupEntityRelationshipId": UUIDAttribute, //
        "backingTable_ConfLayoutLines_BRRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("administration_configurators.layouts.lines");
  }
}
mixin(EntityCalls!("ConfiguratorLayoutLineEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorLayoutLineEntity);

    auto entity = ConfiguratorLayoutLineEntity;
    // TODO more tests
  }
}