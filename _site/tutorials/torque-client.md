# Job Monitoring

List all jobs queued and running on the system:
```shell
qstat
```

Filter the previous view to your own jobs:
```shell
qstat -u $USER
```

Display status of a single job or a list of specific jobs:
```shell
qstat job-id [job-id ...]
```

Column `S` denotes the job status: Queued, Held, Running or Completed.

Display total number of nodes, tasks and elapsed time:
```shell
qstat -a job-id [job-id ...]
```

Show full information about a specific job:
```shell
qstat -f job-id
```

Cancel job:
```shell
qdel job-id
```

Cancel all my jobs:
```shell
qdel all
```