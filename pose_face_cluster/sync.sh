#!/bin/bash

ssh-add ~/.ssh/id_csc
lsyncd -delay 1 -nodaemon -rsyncssh workflow frrobert@puhti.csc.fi /scratch/project_2005056/pose_face_cluster/binds/workflow &
wait
