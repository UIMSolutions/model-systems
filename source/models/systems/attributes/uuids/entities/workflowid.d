/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/module models.workflows.attributes.uuids.entityids.workflowid;

@safe:
import models.workflows;

class DWorkflowIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WorkflowIdAttribute"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .name("workflowId")
      .registerPath("workflowId");
  }  
}
mixin(AttributeCalls!("WorkflowIdAttribute"));

version(test_model_workflows) { unittest {
    testAttribute(new DWorkflowIdAttribute);
    testAttribute(WorkflowIdAttribute);
  }
}