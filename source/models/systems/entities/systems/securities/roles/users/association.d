module models.systems.entities.systems.securities.roles.users.association;

@safe:
import models.systems;

class DSystemSecurityUserRoleAssociationEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityUserRoleAssociationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "assignmentMode": StringAttribute, // 
        "assignmentStatus": StringAttribute, // 
        "securityRole": StringAttribute, // 
        "userId": UUIDAttribute, // 
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
      ])
      .registerPath("administration_system.securities.userrole.associations");
  }
}
mixin(EntityCalls!("SystemSecurityUserRoleAssociationEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityUserRoleAssociationEntity);
  
    auto entity = SystemSecurityUserRoleAssociationEntity;
  }
}