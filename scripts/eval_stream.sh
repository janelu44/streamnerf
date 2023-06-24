SCENE=lego
EXPERIMENT=debug

TRAIN_DIR=/mnt/c/Users/narut/Documents/nerf_results/$EXPERIMENT/$SCENE
DATA_DIR=/mnt/c/Users/narut/Documents/nerf_data/nerf_synthetic/$SCENE


python -m stream_eval \
  --data_dir=$DATA_DIR \
  --train_dir=$TRAIN_DIR \
  --chunk=12288 \
  --gin_file=configs/blender.gin \
  --logtostderr
