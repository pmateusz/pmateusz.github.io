---
title: Job Submission in Torque
layout: post
categories:
  - linux
  - torque
---
![](/assets/images/kelvingrove-sptfire-fighter.png)
Torque jobs are developed as a Unix shell scripts. This post will explain how to submit them to the Torque batch server
and specify extra requirements that should be statisfied by the runtime environment eligible to run the job.

Torque job scripts are developed in a Unix shell or a scripting language with a shell interpreter. Common examples of both approaches are Bash and Python respectively.

### Script Template

The following template can be used to develop Torque jobs scripts:
```shell
#!/bin/bash
#PBS -l nodes=1:ppn=4
#PBS -l mem=2gb
#PBS -l 00:10:00
#PBS -N $USER_matlab_job
#PBS -j oe
#PBS -M user@hostname
#PBS -m abe

date
```

The script ought to be interpreted by the Bash shell ran on a single CPU with 4 cores. The total virtual memory allocated by the process will not exceed 2 GB. The process is expected to complete within 10 minutes. The job name should be created by appending `_matlab_job` to the owner username. Standard output and standard error output streams should be concatenated and saved in the owner home directory as `{$USER_matlab_job}o{sequence_number}` file, where the sequence_number will be assigned by the batch server after the submission. An email will be sent to `user@hostname` as soon as the job begins, runs to completion or is aborted. The script will print date and time on the standard output of the computing node and complete.

In the previous example we saw how Torque options can be used to describe job allocation requirements and limits for the scheduling process. By the rule of thumb the scheduler will try to find the worst computing node that satisfies all scheduling requirements and limits. The tighther the constraints are the more time the job is expected to wait in the queue.

Overview of the popular scheduling options is available in the table below. For the complete list refer the the [Administrator guide](http://docs.adaptivecomputing.com/torque/6-1-0/adminGuide/help.htm).

|| Option || Example || Meaning ||
| -a `date_time` | -a 1130 | The `date_time` argument is in the format `[[[[CC]YY]MM]DD]hhmm[.SS]` where `CC` is the first two digits of the year (the century), remaining symbols are self-describing. If a job is submitted after the requested start time, it will be scheduled for the following day.|
| -l `resource_list` | -l nodes=2:ppn=8 | Defines resources that are required by the job or establishes a limit to the amount of resource that can be consumed. If limit is not specified it is generally considered as infinite. Limits are described in detail in the next section. |
| -q `queue`| -q batch | Submit the job to a specific queue. |
| -N `jobname` | -N $USER_JOB | Give the job a name. The default is the filename of the job script. |
| -j action | -j oe | Declares if the standard error stream of the job will be merged with the standard output stream of the job. |
| -p priority | -p 0 | Set job priority. The priority is a number between -1024 and +1023. A higher number means higher priority. The default priority is 0. |
| -o `stdout_path` | | Defines the path to be used for the standard output stream of the batch job. The path argument is of the form: `[hostname:]path_name` where hostname is the name of a host to which the file will be returned, and `path_name` is the path name on that host. |
| -e `stderr_path` | | The same as above for the standard error. |
| -M `email_address`| | Send email to address  when certain events occur. By default an email is sent only if the job is killed by the batch system. |
| -m `[a][b][e]` | -m abe | Send email when the job begins, ends and/or is aborted. |
| -v `variable_list` | -v VAR1,VAR2="some value",VAR3 | Pass variables to the job, either with a specific value or from the submitting environment. |  
| -V | | Pass the full environment the job was submitted from |
| -F | -F "myarg1 myarg2 myarg3=myarg3value" | Specifies the arguments that will be passed to the job script when the script is launched. |
| -d path | | Defines the working directory path to be used for the job. If the -d option is not specified, the default working directory is the home directory. |
| -P	`user[:group]` | -P vagrant |	Allows a root user or manager to submit a job as another user. Torque treats proxy jobs as though the jobs were submitted by the supplied username.|
| -X | | Enable X11 forwarding |


### Resource Limits

Resource limits are used to express temporal, hardware and software constraints that the scheduling process
should take take into account before assigning a job to a computing node.

The resource limits are descrived using the following syntax:
```shell
#PBS -l resource_list
#PBS -l nodes=2:ppn=8:cpuclock=conservative
#PBS -l walltime=10:30
#PBS -l mem=4gb
#PBS -l feature=matlab
```

If a limit is not specified it is generally considered as infinite.

Popular resource limits are explained in the table below. For the complete list of available limits refer to the [Administrator guide](http://docs.adaptivecomputing.com/torque/6-1-0/adminGuide/help.htm#topics/torque/2-jobs/requestingRes.htm).


|| Name || Examle || Meaning ||
| walltime=walltime | walltime=10:30 | Maximum wallclock time the job will need. Default is 1 hour. Walltime is specified in seconds or as hh:mm:ss. |
| mem=memory | mem=2gb | Total amount of virtual memory that the job will allocate. Default value depends on a queue |
| nodes=num:ppn=num | nodes=1:ppn=4 | Number of nodes and number of processors per node required. Default is 1 node and 1 processor per node. By the rule of thumb, if you are not sure how many nodes to request, it should be 1. |
| cpluclock=governor-policy-name | cpuclock=ondemand | CPU may be running at a less-than-maximum frequency in order to conserve power. Available governor policies are: performance, powersave, ondemand, conservative. Read more about [CPU frequency scaling](https://wiki.debian.org/HowTo/CpuFrequencyScaling). |
| feature=feature_name | feature=matlab | Request a specific Torque node property. There is no established standard for the list of features. Contact your IT department for more information. |

### Developing Advanced Scripts
Complex scripts may require access to information about runtime environment and properties of the job. Torque runner exports basic parameters as environment variables: `PBS_JOBID`, `PBS_O_WORKDIR`, `PBS_SERVER`, etc. For the complete list of environment variables refer to the [Administrator guide](http://docs.adaptivecomputing.com/torque/6-1-0/adminGuide/help.htm#topics/torque/commands/qsub.htm).

### Script Submission
The script can be submitted to the Torque batch server using the `qsub` command line utility. The program is distributed as the `torque-package-clients-linux-x86_64.sh` self-extracting script. 

The command below submits a job request to execute the `script.sh` to the Torque batch server.

```shell
> qsub script.sh
job-id
```

The output contains the id assigned to the job by the batch server. Extra options passed to the submission command overwrite scheduling requirements and limits declared in the job script.

By default once the job completes its output will be saved in the home directory of the job owner as the `{job_name}.o{sequence_number}` file, where `job_name` is the name of the job and the `sequence_number` is the job number assigned during the submission.

The current status of the job can be checked using the `qstat` command:
```shell
> qstat job-id
```

If the command above does not print any output, the job has already finished or the job-id is not correct.

To learn more about Torque job management refer to the post [the post](/torque-job-management.md).