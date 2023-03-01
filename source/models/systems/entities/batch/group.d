/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.batch.group;

@safe:
import models.systems;

class DBatchGroupEntity : DEntity {
  mixin(EntityThis!("BatchGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([  
        "serverId": UUIDAttribute, // 
        "description": StringAttribute, // 
        "backingTable_BatchGroupRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_batchgroups");
  }
}
mixin(EntityCalls!("BatchGroupEntity"));

version(test_model_systsms) { unittest {
    assert(BatchGroupEntity);

    auto entity = BatchGroupEntity;
  }
}