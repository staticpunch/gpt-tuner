CUDA_VISIBLE_DEVICES=6,7 torchrun --nproc_per_node=2 --master_port=29502 -m tevatron.driver.train \
  --output_dir model_nq \
  --dataset_name nguyenthanhdo/retrieval-v1.0 \
  --model_name_or_path intfloat/multilingual-e5-base \
  --do_train \
  --save_steps 10000 \
  --fp16 \
  --per_device_train_batch_size 32 \
  --train_n_passages 2 \
  --learning_rate 1e-5 \
  --q_max_len 100 \
  --p_max_len 512 \
  --num_train_epochs 30 \
  --negatives_x_device
