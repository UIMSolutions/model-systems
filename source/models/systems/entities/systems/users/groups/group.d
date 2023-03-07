/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.systems.entities.systems.users.groups.group;

@safe:
import models.systems;

class DSystemUserGroupEntity : DEntity {
  mixin(EntityThis!("SystemUserGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "groupId": UUIDAttribute, //
        "backingTable_UserGroupInfoRelationshipId": UUIDAttribute, //      
      ])
      .registerPath("administration_systems.users.groups");
  }
}
mixin(EntityCalls!("SystemUserGroupEntity"));

version(test_model_systsms) { unittest {
    assert(SystemUserEntity);
  
    auto entity = SystemUserEntity;
  }
}