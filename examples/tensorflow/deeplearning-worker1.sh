source /etc/profile

CUDA_VISIBLE_DEVICES='' python3 /myEFSvolume/deeplearning-cfn/examples/tensorflow/cifar10_multi_machine_train.py --batch_size 128 --data_dir=/myEFSvolume/cifar10_data --train_dir=/myEFSvolume/deeplearning-cfn/examples/tensorflow/train --ps_hosts=deeplearning-worker1:2222,deeplearning-worker2:2222,deeplearning-worker3:2222,deeplearning-worker4:2222,deeplearning-worker5:2222 --worker_hosts= --job_name=ps --task_index=0 > /myEFSvolume/deeplearning-cfn/examples/tensorflow/logs/ps0 2>&1 &

