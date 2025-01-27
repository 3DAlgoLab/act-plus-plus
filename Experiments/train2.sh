cd ..

export MUJOCO_GL=egl
export WANDB_MODE=offline
# python3 imitate_episodes.py \
#   --task_name sim_transfer_cube_human \
#   --ckpt_dir ./vq_test \
#   --policy_class ACT --kl_weight 10 --chunk_size 100 \
#   --hidden_dim 512 --batch_size 8 --dim_feedforward 3200 \
#   --num_epochs 10000 --lr 1e-5 --seed 0 --vq

python3 imitate_episodes.py \
  --task_name sim_transfer_cube_scripted \
  --ckpt_dir "ckpt" \
  --policy_class ACT \
  --kl_weight 10 --chunk_size 100 --hidden_dim 512 --batch_size 8 \
  --dim_feedforward 3200 \
  --num_steps 2000 --lr 1e-5 --seed 0
