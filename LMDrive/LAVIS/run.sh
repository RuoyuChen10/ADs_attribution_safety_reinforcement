#!/bin/bash
GPU_NUM=$1
CONFIG_PATH=$2

# 直接使用torch.distributed启动分布式训练
CUDA_VISIBLE_DEVICES=0,1,2,3 torchrun --nproc_per_node=$GPU_NUM --standalone train.py --cfg-path $CONFIG_PATH