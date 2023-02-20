module models.systems.entities.configurators.layouts.field;

@safe:
import models.systems;

class DConfiguratorLayoutFieldEntity : DOOPEntity {
  mixin(EntityThis!("ConfiguratorLayoutFieldEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "batchId": UUIDAttribute, //
        "comments": StringAttribute, //
        "arrayIndex": StringAttribute, //
        "fill": StringAttribute, //
        "fieldName": StringAttribute, //
        "fieldNumber": StringAttribute, //
        "format": StringAttribute, //
        "justification": StringAttribute, //
        "layoutGroupId": UUIDAttribute, //
        "lineNumber": StringAttribute, //
        "methodName": StringAttribute, //
        "typeOfMethod": StringAttribute, //
        "startPosition": StringAttribute, //
        "fieldSize": StringAttribute, //
        "endPosition": StringAttribute, //
        "summationType": StringAttribute, //
        "tableName": StringAttribute, //
        "truncateField": StringAttribute, //
        "type": StringAttribute, //
        "content": StringAttribute, //
        "relationship_ConfiguratorLayoutGroupEntityRelationshipId": UUIDAttribute, //
        "backingTable_ConfLayoutFields_BRRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //

      ])
      .registerPath("administration_configurators.layouts.fields");
  }
}
mixin(EntityCalls!("ConfiguratorLayoutFieldEntity"));

version(test_model_administrations) {
  unittest {
    assert(ConfiguratorLayoutFieldEntity);

    auto entity = ConfiguratorLayoutFieldEntity;
    // TODO more tests
  }
}