/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.administrations.configurators.layouts.line;

@safe:
import models.systems;

class DConfiguratorLayoutLineEntity : DEntity {
  mixin(EntityThis!("ConfiguratorLayoutLineEntity"));

  override void initialize(Json configSettings = Json(null)) {
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
      .registerPath("system_configurators.layouts.lines")      
      .routingPath("/systems/administrations");
  }
}
mixin(EntityCalls!("ConfiguratorLayoutLineEntity"));

version(test_model_systsms) { unittest {
    assert(ConfiguratorLayoutLineEntity);

    auto entity = ConfiguratorLayoutLineEntity;
    // TODO more tests
  }
}