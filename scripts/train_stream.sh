SCENE=lego
EXPERIMENT=debug

TRAIN_DIR=/path/to/nerf_results/$EXPERIMENT/$SCENE
DATA_DIR=/path/to/nerf_data/nerf_synthetic/$SCENE

rm $TRAIN_DIR/*
python -m stream_train \
  --data_dir=$DATA_DIR \
  --train_dir=$TRAIN_DIR \
  --gin_file=configs/blender.gin \
  --logtostderr