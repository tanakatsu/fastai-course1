# fast.ai course1 

Jupyter notebooks of [Practical Deep Learning For Coders, Part 1](http://course.fast.ai/)

Contains modifications to work with keras 1.2.2 and sklearn 0.19.1 and to reproduce Jeremy's result.

### some files that I added

- `switch_keras_backend.sh`: change backends easily between theano and tensorflow
- `convert_weights.ipynb`: create vgg16 pretrained weight file for tensorflow
- `lesson1_tf.ipynb`: result of using tensorflow backend with original weight file
- `lesson1_tf.fixed.ipynb`: result of using tensorflow backend with converted weight file
- `statefarm.create-valid.ipynb`: create validation dataset for statefarm
- `image.py`: Image Preprocessing module file of keras 1.1.0 to work MixIterator under keras 1.2.2
- `setup/aws-alias.sh`: fix getting instace's ip address
- `setup/setup_p2.sh`: fix region ('us-west-2') to create gpu instance from Japan
- `setup/install-gpu-azure.sh`: fix cuda version (0.8)  and theano version (0.9.0), skip installing jupyter notebook
- `setup/setup-jupyter-only.sh`: install only jupyter notebook after install-gpu-azure.sh