module models.systems.entities.password;

@safe:
import models.systems;



class DSYSPassword : DOOPEntity {
  mixin(EntityThis!("SYSPassword"));

  static string namespace = moduleName!DSYSPassword;
  override string entityPath() { return "system/password"; }
  override string entityClass() { return "sysPassword"; }
  override string entityClasses() { return "sysPasswords"; }

  override DOOPEntity clone() { return SYSPassword; }

  mixin(SProperty!("UUID", "accountId"));
  O accountId(this O)(string newAccountId) { 
    if (newAccountId.isUUID)
      this.accountId(UUID(newAccountId));
    return cast(O)this; }

  mixin(SProperty!("long", "validFrom"));
  O validFrom(this O)(SysTime aTime) {
    this.validFrom(toTimestamp(aTime));
    return cast(O)this;
  }

  mixin(SProperty!("long", "validUntil"));
  O validUntil(this O)(SysTime aTime) {
    this.validUntil(toTimestamp(aTime));
    return cast(O)this;
  }

  override DOOPEntity fromJson(Json aJson) {
    super.fromJson(aJson);
    
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      switch(k) {
        case "accountId": this.accountId(v.get!string); break;
        case "validFrom": this.validFrom(v.get!long); break;
        case "validUntil": this.validUntil(v.get!long); break;
        default: break;
      }      
    }
    return this;
  }

  override Json toJson(string[] showFields = null, string[] hideFields = null) {    
    auto result = super.toJson(showFields, hideFields);
   
    if (showFields.length == 0) {
      if (!hideFields.exist("accountId")) result["accountId"] = this.accountId.toString;
      if (!hideFields.exist("validFrom")) result["validFrom"] = this.validFrom;
      if (!hideFields.exist("validUntil")) result["validUntil"] = this.validUntil;
    }
    else {
      if ((showFields.exist("accountId")) && (!hideFields.exist("accountId"))) result["accountId"] = this.accountId.toString;
      if ((showFields.exist("validFrom")) && (!hideFields.exist("validFrom"))) result["validFrom"] = this.validFrom;
      if ((showFields.exist("validUntil")) && (!hideFields.exist("validUntil"))) result["validUntil"] = this.validUntil;
    }

    return result;
  }
}
mixin(EntityCalls!("SYSPassword"));

version(test_model_systems) {
  unittest {
    assert(SYSPassword);
  
  auto entity = SYSPassword;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}