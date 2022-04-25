module models.systems.entities.account;

@safe:
import models.systems;

class DSystemAccountEntity : DOOPEntity {
  mixin(EntityThis!("SystemAccountEntity"));

  mixin(OProperty!("string", "peer"));
  mixin(OProperty!("bool", "active"));

  mixin(OProperty!("UUID", "passwordRuleId"));
  O passwordRuleId(this O)(string newPasswordRuleId) { 
    if (newPasswordRuleId.isUUID)
      this.passwordRuleId(UUID(newPasswordRuleId));
    return cast(O)this; }

  mixin(OProperty!("long", "validFrom"));
  O validFrom(this O)(SysTime aTime) {
    this.validFrom(toTimestamp(aTime));
    return cast(O)this;
  }

  mixin(OProperty!("long", "validUntil"));
  O validUntil(this O)(SysTime aTime) {
    this.validUntil(toTimestamp(aTime));
    return cast(O)this;
  }

  // !Not part of Json
  mixin(OProperty!("bool", "otp"));
  mixin(OProperty!("string", "password"));

  mixin(OProperty!("UUID", "userId"));
  O userId(this O)(string newId) { 
    if (newId.isUUID)
      this.userId(UUID(newId));
    return cast(O)this; }

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_accounts");
  }

  override DOOPEntity clone() { return SystemAccountEntity; }

  override DOOPEntity fromJson(Json aJson) {
    super.fromJson(aJson);
    
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      
      switch(k) {
        case "active": this.active(v.get!bool); break;
        case "passwordRuleId": this.passwordRuleId(v.get!string); break;
        case "validFrom": this.validFrom(v.get!long); break;
        case "validUntil": this.validUntil(v.get!long); break;
        case "userId": this.userId(v.get!string); break;
        default: break;
      }      
    }
    return this;
  }

  override Json toJson(string[] showFields = null, string[] hideFields = null) {    
    auto result = super.toJson(showFields, hideFields);
   
    if (showFields.length == 0) {
      if (!hideFields.exist("active")) result["active"] = this.active;
      if (!hideFields.exist("passwordRuleId")) result["passwordRuleId"] = this.passwordRuleId.toString;
      if (!hideFields.exist("validFrom")) result["validFrom"] = this.validFrom;
      if (!hideFields.exist("validUntil")) result["validUntil"] = this.validUntil;
      if (!hideFields.exist("userId")) result["userId"] = this.userId.toString;
    }
    else {
      if ((showFields.exist("active")) && (!hideFields.exist("active"))) result["active"] = this.active;
      if ((showFields.exist("passwordRuleId")) && (!hideFields.exist("passwordRuleId"))) result["passwordRuleId"] = this.passwordRuleId.toString;
      if ((showFields.exist("validFrom")) && (!hideFields.exist("validFrom"))) result["validFrom"] = this.validFrom;
      if ((showFields.exist("validUntil")) && (!hideFields.exist("validUntil"))) result["validUntil"] = this.validUntil;
      if ((showFields.exist("userId")) && (!hideFields.exist("userId"))) result["userId"] = this.userId.toString;
    }

    return result;
  }
}
mixin(EntityCalls!("SystemAccountEntity"));

version(test_model_systems) {
  unittest {
    assert(SystemAccountEntity);
  
  auto entity = SystemAccountEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}