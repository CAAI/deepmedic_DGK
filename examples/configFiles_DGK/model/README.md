
# Setting up environment and training for deep medic

## Installing tensoflow
I install docker and run tensorflow from here, since I failed in installing tensorflow properly without docker. 
I followed this site: https://www.tensorflow.org/install/docker

## Opening a docker container which has tensorflow and your data
After installing docker, start a new docker-instance using the following on command-line:
docker run --gpus '"device=0"' --cpus 12.0 -d -it \
-v ~/../../media/bizon/data2tb/deep_medic/:/deep_medic/ \
tensorflow/tensorflow:latest-gpu bash

Note that the above command mounts my data folder ~/../../media/bizon/data2tb/deep_medic/ to the docker container. 
This ensures that I can train on this data. The folder needs to be local on your GPU-machine. In my case it could not be run from a network drive.

Now enter the docker environment:
´docker ps´ (to find the name of your docker-instance, in my case "vigorous_swirles"). Then enter:
´docker exec -it vigorous_swirles bash´

## Install deep_medic in the docker container
I copy a version of the deep medic repository to this path:
<path_to_dm_on_my_machine>/homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic

And go to the folder using
cd /deep_medic/homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic

Now install:
pip install .

## Run training and testing
Now go to the folder holding your config files: 
cd /deep_medic/homes/kovacs/project_data/hnc-auto-contouring/deepMedic/config_files/model

Now you can train or predict using the commands in the files 
train_hnc_deepmedic.sh
train_hnc_deepmedic_valSets.sh
test_hnc_deepmedic.sh

Note
Copying files to you local drive can be done with the following commands:
rsync -auvR --rsh=ssh <server.name>:<path_to_data_source> <path_to_data_destination>

