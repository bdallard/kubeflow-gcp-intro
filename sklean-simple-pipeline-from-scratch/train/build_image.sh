#!/bin/sh

image_name=gcr.io/$PROJECT/kubeflow/pipe-scratch-train
image_tag=latest

full_image_name=${image_name}:${image_tag}
base_image_tag=v0.1-py3

cd "$(dirname "$0")" 

docker build --build-arg BASE_IMAGE_TAG=${base_image_tag} -t "${full_image_name}" .
docker push "$full_image_name"

