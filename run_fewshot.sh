#!/bin/bash
#datasets=(
 #   'sst2'
  #  'mrpc'
 #   'rte'
  #  'mnli'
  #  'qnli'
  #  'snli'
#)
datasets=(
    'sst2'
    )

export HTTP_PROXY="http://202.194.251.49:7897"
export HTTPS_PROXY="http://202.194.251.49:7897"
# Loop through each main dataset and run the script
for dataset in "${datasets[@]}"
do
    python stableprompt_tc.py --dataset $dataset --epoch 100 --update_term 5
done