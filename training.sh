#!/bin/bash
objectDetection='/w/tools/tensorflow/models/research/object_detection/'
python ${objectDetection}model_main.py \
	--pipeline_config_path=faster_rcnn_resnet101_voc07.pbtxt \
	--model_dir=../run/2019-05-20 \
	--num_train_steps=10000 \
	--sample_1_of_n_eval_examples=1 \
	--alsologtostderr