module models.systems.entities.configurators.layouts.line;

@safe:
import models.systems;

class DConfiguratorLayoutLineEntity : DEntity {
  mixin(EntityThis!("ConfiguratorLayoutLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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

version(test_model_systsms) { unittest {
    assert(ConfiguratorLayoutLineEntity);

    auto entity = ConfiguratorLayoutLineEntity;
    // TODO more tests
  }
}