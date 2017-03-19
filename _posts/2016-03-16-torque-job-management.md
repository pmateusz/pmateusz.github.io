---
title: Job Management in Torque
categories:
  - linux
  - torque
---
![](/assets/images/dublin-zoo-rhinoceroses-832x468.png)

Suite of command line utilities for managing Torque jobs can be installed using the self-extracting script `torque-package-clients-linux-x86_64.sh`. This post provides general overview of tools for querying, filtering and cancelling of Torque jobs available in the package.

<!--more--> 

### Querying and Filtering Jobs
`qstat` is used to print the status of batch jobs.

By default a list of all jobs in the queue on the server is displayed:
```shell
> qstat queue-name@server

Job ID                    Name             User            Time Use S Queue
------------------------- ---------------- --------------- -------- - -----
1.server.cluster.org      job.sh           vagrant                0 R batch
```

If the queue-name and server are skipped the jobs in the default queue and on the default server will be presented.

The `S` column in the output contains the current status of a job. The list of all available states is presented in the table below.

| Status | Description |
| ------ | ----------- |
| C	| Completed after having run |
| E	| Exiting after having run |
| H	| Held |
| Q	| Queued, eligible to run or be routed |
| R	| Running |
| T	| Transfered to a new location |
| W	| Waiting for execution conditions to be satisfied |
| S | Suspended |

Use the `-u` option to limit output to jobs owned by the specified user. `$USER` is the environment variable set to current user in the Bash shell.

```shell
> qstat -u $USER

server.cluster.org:
                                                                                  Req\'d       Req\'d       Elap
Job ID                  Username    Queue    Jobname          SessID  NDS   TSK   Memory      Time    S   Time
----------------------- ----------- -------- ---------------- ------ ----- ------ --------- --------- - ---------
1.server.cluster.org    vagrant     batch    test.sh            9038     1     24       --   00:10:00 C       --
```

The columns of the table above contain the following information:
1. the job identifier assigned by the batch server
1. the job owner
1. the queue in which the job currently resides
1. the job name given by the submitter
1. the session id if the job is running
1. the number of nodes requested by the job
1. the number of cpus or tasks requested by the job
1. the amount of memory requested by the job
1. either the cpu time, if specified, or wall time requested by the job, (hh:mm:ss)
1. the jobs current state
1. the amount of cpu time or wall time used by the job (hh:mm:ss)

The `qstat` output can be limited to a specified job or set of jobs and displayed in a more verbose manner.

``` shell
> qstat -a first-job-id second-job-id

server.cluster.org:
                                                                                  Req\'d       Req\'d       Elap
Job ID                  Username    Queue    Jobname          SessID  NDS   TSK   Memory      Time    S   Time
----------------------- ----------- -------- ---------------- ------ ----- ------ --------- --------- - ---------
1.server.cluster.org    vagrant     batch    test.sh            9091     1     24       --   00:10:00 C       --
```

```shell
> qstat -f 1.server.cluster.org
Job Id: 1.server.cluster.org
    Job_Name = test.sh
    Job_Owner = vagrant@node1.cluster.org
    resources_used.cput = 00:00:00
    resources_used.energy_used = 0
    resources_used.mem = 780kb
    resources_used.vmem = 0kb
    resources_used.walltime = 00:00:00
    job_state = C
    queue = batch
    server = server.cluster.org
    Checkpoint = u
    ctime = Sun Mar 19 17:39:12 2017
    Error_Path = node1.cluster.org:/home/vagrant/test.sh.e25
    exec_host = server.cluster.org/0
    Hold_Types = n
    Join_Path = n
    Keep_Files = n
    Mail_Points = a
    mtime = Sun Mar 19 17:39:21 2017
    Output_Path = node1.cluster.org:/home/vagrant/test.sh.o25
    Priority = 0
    qtime = Sun Mar 19 17:39:12 2017
    Rerunable = True
    Resource_List.mppwidth = 24
    Resource_List.walltime = 00:10:00
    Resource_List.mppnodect = -1
    Resource_List.nodes = 1
    Resource_List.nodect = 1
    Resource_List.neednodes = 1
    session_id = 9091
    substate = 59
    Variable_List = PBS_O_QUEUE=batch,PBS_O_HOME=/home/vagrant,
        PBS_O_LOGNAME=vagrant,
        PBS_O_PATH=/usr/local/bin:/usr/local/sbin:/usr/local/sbin:/usr/local/
        bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games,
        PBS_O_MAIL=/var/mail/vagrant,PBS_O_SHELL=/bin/bash,
        PBS_O_LANG=en_US.UTF-8,PBS_O_WORKDIR=/home/vagrant,
        PBS_O_HOST=node1.cluster.org,PBS_O_SERVER=server
    euser = vagrant
    egroup = vagrant
    hashname = 25.server.cluster.org
    queue_rank = 2
    queue_type = E
    sched_hint = Unable to copy files back - please see the mother superior\'s
        log for exact details.
    comment = Job started on Sun Mar 19 at 17:39
    etime = Sun Mar 19 17:39:12 2017
    exit_status = 0
    submit_args = test.sh
    start_time = Sun Mar 19 17:39:12 2017
    start_count = 1
    fault_tolerant = False
    comp_time = Sun Mar 19 17:39:21 2017
    job_radix = 0
    total_runtime = 8.200034
    submit_host = node1.cluster.org
    init_work_dir = /home/vagrant
    request_version = 1
    req_information.task_count.0 = 1
    req_information.lprocs.0 = 1
    req_information.thread_usage_policy.0 = allowthreads
    req_information.hostlist.0 = server.cluster.org:ppn=1
    req_information.task_usage.0.task.0.cpu_list = 0
    req_information.task_usage.0.task.0.mem_list = 0
    req_information.task_usage.0.task.0.cores = 0
    req_information.task_usage.0.task.0.threads = 1
    req_information.task_usage.0.task.0.host = server.cluster.org
```

`qstat` can also be used to print information about the status of a batch server, queues and allocated nodes or display results in a different format. For the full list of supported comamnd line options check the [Administration guide](http://docs.adaptivecomputing.com/torque/6-1-0/adminGuide/help.htm#topics/torque/commands/qstat.htm) or Linux man pages.

### Job Cancellation

Running and queued jobs are cancelled using the `qdel` utility. Users allowed to perform this action on a job are its owner, the batch server operators and administrators.

If a job is already running a SIGTERM signal is sent the process to allow graceful finish. After a preconfigured delay a SIGKILL signal is sent. The time span between these two signals is a configuration parameter of the execution queue. It can also be specified in the request using `-W` option, which takes precedence over the default value.

```shell
qdel job-id -m "message"
```

Cancel all jobs owned by the current user. If a job is running, send a SIGTERM signal and wait for 10 seconds before attempting to kill the process.
```shell
qdel all -W 10
```

For detailed explaination of flags supported by the `qdel` refer to the [Administrator guide](http://docs.adaptivecomputing.com/torque/6-1-0/adminGuide/help.htm#topics/torque/commands/qdel.htm) or Linux man pages.
