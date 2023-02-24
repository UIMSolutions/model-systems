module models.systems.entities.systems.securities.duties.duty;

@safe:
import models.systems;

class DSystemSecurityDutyEntity : DEntity {
  mixin(EntityThis!("SystemSecurityDutyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilege": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
        "backingTable_SecurityRoleDutyPrivilegeExplodedGraphRelationshipId": UUIDAttribute, //
      ])
      .registerPath("administration_system.securities.duties");
  }
}
mixin(EntityCalls!("SystemSecurityDutyEntity"));

version(test_model_systems) { unittest {
    assert(SystemSecurityDutyEntity);
  
    auto entity = SystemSecurityDutyEntity;
  }
}