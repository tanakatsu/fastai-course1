#!/bin/bash

if [ $# -ne 1 ]; then
  echo "ERROR: Wrong arguments"
  echo "Usage: switch_keras_backend.sh th|tf"
  exit 1
fi

if [ $1 != 'th' ] && [ $1 != 'tf' ]; then
  echo "ERROR: Wrong parameter. Parameter must be 'th' or 'tf'."
  echo "Usage: switch_keras_backend.sh th|tf"
  exit 1
fi

backend=$1
if [ $backend = 'th' ]; then
  echo "Use theano as backend"
elif [ $backend = 'tf' ]; then
  echo "Use tensorflow as backend"
fi

cd ~/.keras
ln -nsf keras.$backend.json keras.json

cd ~/.keras/models
ln -nsf vgg16.$backend.h5 vgg16.h5
ln -nsf vgg16_bn.$backend.h5 vgg16_bn.h5

echo 'Done!'
