#!/bin/bash
input='/w/data/VOCdevkit'
objectDetection='/w/tools/tensorflow/models/research/object_detection/'
output='/w/tutorials/tensorflow/2019-05-13/data/'
declare -A targets=( \
	[train]='pascal_train.record' \
	[val]='pascal_val.record' \
)
for type in "${!targets[@]}"; do
	python3 ${base}dataset_tools/create_pascal_tf_record.py \
		--label_map_path=${objectDetection}data/pascal_label_map.pbtxt \
		--data_dir=$input \
		--year=VOC2012 \
		--set=$type \
		--output_path=${output}pascal_${type}.record
done