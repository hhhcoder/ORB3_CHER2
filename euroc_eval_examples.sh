#!/bin/bash
pathDatasetEuroc='../dataset/euroc/asl' #Example, it is necesary to change it by the dataset path


pathForTest='test01' 
pathForEurocYaml='EuRoCtest1'
echo "Evaluation of MH01 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH01/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH01_stereoi.txt --verbose


