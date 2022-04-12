module models.systems.entities.passwordrule;

@safe:
import models.systems;


class DSystemPasswordRule : DOOPEntity {
  mixin(OOPEntityThis!("SystemPasswordRule"));

  override void initialize() {
    super.initialize;

    this
      .registerPath("system_passwordrules");
  }

  override DOOPEntity clone() { return SystemPasswordRule; }

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
    writeln(aJson);
        
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;

    }
    return this;
  }

  override Json toJson(string[] showFields = null, string[] hideFields = null) {    
    auto result = super.toJson(showFields, hideFields);

    return result;   
 }
}
mixin(OOPEntityCalls!("SystemPasswordRule"));

version(test_model_systems) {
  unittest {
    assert(SystemPasswordRule);
  
  auto entity = SystemPasswordRule;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}