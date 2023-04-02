# Package models.systems.entities.administrations.batch

Batch processing allows certain tasks to be run as batch jobs that can be scheduled and run on another computer (a batch server). 

Many tasks can and should be performed as part of batch jobs for custom developments. 

Typical batch jobs would be tasks such as printing reports or sending documents. Using batch jobs will avoid servers slowing down during typical working hours.

With batch tasks, a distinction is made between those that run on a server, i.e. in the background, and others that run on the client. 

## BatchServerScheduleEntity

Tasks running on the server can be run automatically as part of batch jobs, regardless of whether a client is open. However, tasks that run on the client must be run manually using the Batch Setup form.

A client task marked as private can only be executed by the user who created this task.

Tasks in a batch job can be run sequentially or simultaneously. In addition, dependencies between tasks can be specified. For example, a different sequence of tasks can be established if a previous task succeeds or fails.

## BatchJobEntity 

Batch jobs can be associated with repetitions. For example, invoices can be processed automatically at the end of each month.

In the administrative area or in the area of ​​IT security, batch jobs are often used for monitoring. This can be used to set up alerts to be sent when the batch job succeeds, fails, or terminates.

## BatchJobHistoryEntity
After a batch job has been processed, the history can be viewed. This includes all messages that occur during the execution of the job.

## BatchGroupEntity

Batch groups are used to categorize batch tasks and run them on specific servers. The servers may have different software installed or be available at different times of the day. Batch groups are used to route batch tasks to the most appropriate server. Tasks in the same batch job can belong to different batch groups.