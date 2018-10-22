#!/bin/sh

set -e

cd $(dirname "$0")

sudo docker build -t onuras/docs.rs:debian-jessie debian-jessie
sudo docker build -t onuras/docs.rs:debian-stretch debian-stretch

sudo docker push onuras/docs.rs:debian-jessie
sudo docker push onuras/docs.rs:debian-stretch
