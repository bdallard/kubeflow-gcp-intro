#!/bin/sh

echo "\nBuild and push preprocess component"
chmod +x ./preprocess_data/build_image.sh
bash /preprocess_data/build_image.sh

echo "\nBuild and push train component"
chmod +x ./train/build_image.sh
bash ./train/build_image.sh

echo "\nBuild and push test component"
chmod +x ./test/build_image.sh
bash ./test/build_image.sh

echo "\nBuild and push deploy component"
chmod +x ./deploy_model/build_image.sh
bash ./deploy_model/build_image.sh

