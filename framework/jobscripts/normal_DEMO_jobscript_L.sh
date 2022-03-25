#!/bin/bash

app=demo

#SBATCH --job-name=$app
#SBATCH --output=%x.o%j
#SBATCH –-error=%x.e%j
#SBATCH --partition nocona
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=128
#SBATCH --time=10:00:00
#SBATCH --mem-per-cpu=3994MB ##3.9GB, Modify based on needs

gcc testing/hello_world.c -o testing/hello_world.out
./testing/hello_world.out | tee results/DEMO_RUN_OUT
