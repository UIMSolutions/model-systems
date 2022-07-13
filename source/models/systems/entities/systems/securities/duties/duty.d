module models.systems.entities.systems.securities.duties.duty;

@safe:
import models.systems;

class DSystemSecurityDutyEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityDutyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilege": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
        "backingTable_SecurityRoleDutyPrivilegeExplodedGraphRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_system.securities.duties");
  }
}
mixin(EntityCalls!("SystemSecurityDutyEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityDutyEntity);
  
    auto entity = SystemSecurityDutyEntity;
  }
}