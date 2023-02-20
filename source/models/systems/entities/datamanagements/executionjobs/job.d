module models.systems.entities.datamanagements.executionjobs.job;

@safe:
import models.systems;

class DDataManagementExecutionJobEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementExecutionJobEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "jobId": UUIDAttribute
      ])
      .registerPath("administration_datamanagements.executionjobs");
  }
}
mixin(EntityCalls!("DataManagementExecutionJobEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementExecutionJobEntity);

    auto entity = DataManagementExecutionJobEntity;
    // TODO more tests
  }
}