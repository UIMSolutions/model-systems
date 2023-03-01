/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.configurators.layouts.field;

@safe:
import models.systems;

class DConfiguratorLayoutFieldEntity : DEntity {
  mixin(EntityThis!("ConfiguratorLayoutFieldEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
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

version(test_model_systsms) { unittest {
    assert(ConfiguratorLayoutFieldEntity);

    auto entity = ConfiguratorLayoutFieldEntity;
    // TODO more tests
  }
}