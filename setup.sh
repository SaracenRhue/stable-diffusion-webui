#!/bin/bash

dir="./models"

if [ -d "$dir" ] && [ "$(ls -A "$dir")" == "" ]; then
    mkdir ./models/deepbooru
    mkdir ./models/karlo
    mkdir ./models/Stable-diffusion
    mkdir ./models/VAE
    mkdir ./models/VAE-approx
    wget -P ./models/karlo https://github.com/SaracenRhue/stable-diffusion-webui/raw/master/models/karlo/ViT-L-14_stats.th
    wget -P ./models/Stable-diffusion https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned.ckpt
    wget -P ./models/VAE-approx https://github.com/SaracenRhue/stable-diffusion-webui/raw/master/models/VAE-approx/model.pt

fi

bash webui.sh
