#!/bin/bash

SCENE=lego
EXPERIMENT=blender/"$SCENE"_bezier
DATA_ROOT=data/nerf_synthetic
DATA_DIR="$DATA_ROOT"/"$SCENE"

CUDA_VISIBLE_DEVICES=0 python render.py \
  --gin_configs=configs/blender.gin \
  --gin_bindings="Config.data_dir = '${DATA_DIR}'" \
  --gin_bindings="Config.exp_name = '${EXPERIMENT}'" \
  --gin_bindings="Config.render_video_fps = 30" \
  --gin_bindings="Config.factor = 4"
  --gin_bindings="Config.render_progressive_strokes=True"
