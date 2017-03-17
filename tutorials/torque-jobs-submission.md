# Cover how to access google drive from linux

```shell
#!/bin/bash
#PBS option
#PBS -l nodes=2:ppn=8
#PBS -p priority # priority is a number between -1024 and +1023. A higher number means higher priority. The default priority is 0.
-l walltime=walltime # Maximum wallclock time the job will need. Default is 1 hour. Walltime is specified in seconds or as hh:mm:ss.
-l mem=memory # Default depends on queue, normally 2GB for serial jobs and the full node for parallel jobs. Memory should be specified with units, eg 500MB or 8GB.
-l nodes=num:ppn=num
# Number of nodes and number of processors per node required. Default is 1 node and 1 processor per node.
-q queue
Submit to a specific queue. If not specified, Torque will choose a queue based on the resources requested.

Options to manage job output:
-N jobname
Give the job a name. The default is the filename of the job script. Within the job, $PBS_JOBNAME expands to the job name 
-j oe
Merge stderr into the stdout file 
-o path/for/stdout
Send stdout to path/for/stdout. Can be a filename or an existing directory. The default filename is $PBS_JOBNAME.o${PBS_JOBID/.*}, eg myjob.o12345, in the directory from which the job was submitted 
-e path/for/stderr
Send stderr to path/for/stderr. Same usage as for stdout.
-M my_email_address@nyu.edu
Send email to my_email_address@nyu.edu when certain events occur. By default an email is sent only if the job is killed by the batch system.
-m b -m e -m a -m abe
Send email when the job begins (b), ends (e) and/or is aborted (a).  
Options to set the job environment:
-S /path/to/shell
Use the shell at /path/to/shell to interpret the script. Default is your login shell, which at NYU HPC is normally /bin/bash. 
-v VAR1,VAR2="some value",VAR3
Pass variables to the job, either with a specific value (the VAR= form) or from the submitting environment (without "=")  
-V
Pass the full environment the job was submitted from
```

http://docs.adaptivecomputing.com/torque/6-0-3/adminGuide/help.htm#topics/torque/2-jobs/requestingRes.htm%3FTocPath%3D3%2520Submitting%2520and%2520Managing%2520Jobs%7CJob%2520Submission%7C_____3