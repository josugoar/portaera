#!/bin/sh

echo "==================================================================="
echo "begin download models for vehiclemakenet / vehicletypenet / trafficcamnet"
echo "==================================================================="
mkdir -p models/vehiclemakenet && \
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tao/vehiclemakenet/versions/pruned_v1.0.1/zip \
-O vehiclemakenet_pruned_v1.0.1.zip && \
unzip vehiclemakenet_pruned_v1.0.1.zip -d models/vehiclemakenet && \
rm vehiclemakenet_pruned_v1.0.1.zip
mkdir -p models/vehicletypenet && \
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tao/vehicletypenet/versions/pruned_v1.0.1/zip \
-O vehicletypenet_pruned_v1.0.1.zip && \
unzip vehicletypenet_pruned_v1.0.1.zip -d models/vehicletypenet && \
rm vehicletypenet_pruned_v1.0.1.zip
mkdir -p models/trafficcamnet && \
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tao/trafficcamnet/versions/pruned_v1.0.3/zip \
-O trafficcamnet_pruned_v1.0.2.zip && \
unzip trafficcamnet_pruned_v1.0.2.zip -d models/trafficcamnet && \
rm trafficcamnet_pruned_v1.0.2.zip

echo "==================================================================="
echo "Download models successfully "
echo "==================================================================="
