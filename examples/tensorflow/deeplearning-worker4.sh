source /etc/profile

python3 /myEFSvolume/deeplearning-cfn/examples/tensorflow/cifar10_multi_machine_train.py --batch_size 128 --data_dir=/myEFSvolume/cifar10_data --train_dir=/myEFSvolume/deeplearning-cfn/examples/tensorflow/train --max_steps 200000 --ps_hosts=deeplearning-worker1:2222,deeplearning-worker2:2222,deeplearning-worker3:2222,deeplearning-worker4:2222,deeplearning-worker5:2222 --worker_hosts=deeplearning-worker1:2230,deeplearning-worker2:2230,deeplearning-worker3:2230,deeplearning-worker4:2230,deeplearning-worker5:2230 --job_name=ps --task_index=3 > /myEFSvolume/deeplearning-cfn/examples/tensorflow/logs/ps3 2>&1 &

python3 /myEFSvolume/deeplearning-cfn/examples/tensorflow/cifar10_multi_machine_train.py --batch_size 128 --data_dir=/myEFSvolume/cifar10_data --train_dir=/myEFSvolume/deeplearning-cfn/examples/tensorflow/train --max_steps 200000 --ps_hosts=deeplearning-worker1:2222,deeplearning-worker2:2222,deeplearning-worker3:2222,deeplearning-worker4:2222,deeplearning-worker5:2222 --worker_hosts=deeplearning-worker1:2230,deeplearning-worker2:2230,deeplearning-worker3:2230,deeplearning-worker4:2230,deeplearning-worker5:2230 --job_name=worker --task_index=3 > /myEFSvolume/deeplearning-cfn/examples/tensorflow/logs/worker3 2>&1 &

