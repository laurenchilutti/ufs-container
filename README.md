# ufs-container

This repository houses the dockerfile for compiling the ufs-weather-model with GFDL environment containers for modeling.

## Building
This is the recommended way to build the docker container image:
```bash
cd docker
docker build -t gfdl_ufs:FMS2021.03-intel2021.4 -f Dockerfile .
```

## Pulling
The docker container images are currently stored in the `thomasrobinson` repository on dockerhub.  If pulling using singularity:
```bash
singularity pull docker://thomasrobinson/gfdl_ufs:FMS2021.03-intel2021.4
```

## Running
The folder (runscript)[runscript] has run scripts to run the model. The default run script is a link called 
(runscript/run.sh)[run.sh].  Use `singularity exec` to run execute this runscript.  If you have the 
`gfdl_ufs_FMS2021.03-intel2021.4.sif` file in your run directory and you are in your run directory, you can 
do the following (assuming you set the variable `ranks` to be the number of MPI ranks you wish to run)

(mpirun)
```bash
mpirun -n ${ranks} singularity exec -b ${PWD} runscript/run.sh |& tee fms.out
```
(srun)
```bash
srun -n ${ranks} singularity exec -b ${PWD} runscript/run.sh |& tee fms.out
```

If there are any problems, please open an issue.
