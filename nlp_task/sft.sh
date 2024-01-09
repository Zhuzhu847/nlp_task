CUDA_VISIBLE_DEVICES=4,5,6,7 accelerate launch src/train_bash.py \
    --stage sft \
    --do_train \
    --model_name_or_path /mnt/ganyang/bloomz-560m \
    --dataset Cot_zh \
    --template default \
    --finetuning_type lora \
    --lora_target query_key_value \
    --output_dir /mnt/ganyang/outputs/bloomz_560m_sft_cot_zh \
    --overwrite_cache \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 2 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 2.0 \
    --plot_loss \
    --fp16