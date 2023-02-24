module models.systems.entities.datamanagements.executionjobs.job;

@safe:
import models.systems;

class DDataManagementExecutionJobEntity : DEntity {
  mixin(EntityThis!("DataManagementExecutionJobEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addAttributes([
        "description": StringAttribute, //
        "jobId": UUIDAttribute
      ])
      .registerPath("administration_datamanagements.executionjobs");
  }
}
mixin(EntityCalls!("DataManagementExecutionJobEntity"));

version(test_model_systsms) { unittest {
    assert(DataManagementExecutionJobEntity);

    auto entity = DataManagementExecutionJobEntity;
    // TODO more tests
  }
}