# with 2 3090 GPU
python -m torch.distributed.launch --master_port 12347 --nproc_per_node=2 \
            main.py  something  RGB --arch resnet101 --num_segments 8 --gd 20 --lr 0.001 \
            --lr_scheduler step --lr_steps  30 45 55 --epochs 60 --batch-size 8 \
            --wd 5e-4 --dropout 0.5 --consensus_type=avg --eval-freq=1 -j 4 --npb --TC
