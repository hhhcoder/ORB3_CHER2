#!/bin/bash
pathDatasetEuroc='../dataset/euroc/asl' #Example, it is necesary to change it by the dataset path



pathForTest='test01' 
pathForEurocYaml='EuRoCtest1'
echo "Launching MH01 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH01 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt "$pathForTest"MH01_stereoi

echo "Launching MH02 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH02 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH02.txt "$pathForTest"MH02_stereoi

echo "Launching MH03 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH03 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH03.txt "$pathForTest"MH03_stereoi

echo "Launching MH04 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH04 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH04.txt "$pathForTest"MH04_stereoi

echo "Launching MH05 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH05 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH05.txt "$pathForTest"MH05_stereoi

echo "Launching V101 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V101 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V101.txt "$pathForTest"V101_stereoi

echo "Launching V102 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V102 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V102.txt "$pathForTest"V102_stereoi

echo "Launching V103 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V103 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V103.txt "$pathForTest"V103_stereoi

echo "Launching V201 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V201 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V201.txt "$pathForTest"V201_stereoi

echo "Launching V202 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V202 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V202.txt "$pathForTest"V202_stereoi

echo "Launching V203 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V203 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V203.txt "$pathForTest"V203_stereoi

echo "Evaluation of MH01 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH01/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH01_stereoi.txt --verbose

echo "Evaluation of MH02 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH02/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH02_stereoi.txt --verbose

echo "Evaluation of MH03 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH03/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH03_stereoi.txt --verbose

echo "Evaluation of MH04 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH04/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH04_stereoi.txt --verbose

echo "Evaluation of MH05 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH05/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH05_stereoi.txt --verbose

echo "Evaluation of V101 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V101/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V101_stereoi.txt --verbose

echo "Evaluation of V102 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V102/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V102_stereoi.txt --verbose

echo "Evaluation of V103 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V103/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V103_stereoi.txt --verbose

echo "Evaluation of V104 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V201/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V201_stereoi.txt --verbose

echo "Evaluation of V105 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V202/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V202_stereoi.txt --verbose

echo "Evaluation of V106 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V203/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V203_stereoi.txt --verbose





pathForTest='test02' 
pathForEurocYaml='EuRoCtest2'
echo "Launching MH01 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH01 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt "$pathForTest"MH01_stereoi

echo "Launching MH02 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH02 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH02.txt "$pathForTest"MH02_stereoi

echo "Launching MH03 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH03 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH03.txt "$pathForTest"MH03_stereoi

echo "Launching MH04 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH04 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH04.txt "$pathForTest"MH04_stereoi

echo "Launching MH05 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH05 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH05.txt "$pathForTest"MH05_stereoi

echo "Launching V101 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V101 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V101.txt "$pathForTest"V101_stereoi

echo "Launching V102 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V102 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V102.txt "$pathForTest"V102_stereoi

echo "Launching V103 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V103 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V103.txt "$pathForTest"V103_stereoi

echo "Launching V201 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V201 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V201.txt "$pathForTest"V201_stereoi

echo "Launching V202 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V202 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V202.txt "$pathForTest"V202_stereoi

echo "Launching V203 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V203 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V203.txt "$pathForTest"V203_stereoi

echo "Evaluation of MH01 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH01/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH01_stereoi.txt --verbose

echo "Evaluation of MH02 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH02/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH02_stereoi.txt --verbose

echo "Evaluation of MH03 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH03/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH03_stereoi.txt --verbose

echo "Evaluation of MH04 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH04/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH04_stereoi.txt --verbose

echo "Evaluation of MH05 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH05/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH05_stereoi.txt --verbose

echo "Evaluation of V101 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V101/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V101_stereoi.txt --verbose

echo "Evaluation of V102 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V102/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V102_stereoi.txt --verbose

echo "Evaluation of V103 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V103/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V103_stereoi.txt --verbose

echo "Evaluation of V104 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V201/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V201_stereoi.txt --verbose

echo "Evaluation of V105 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V202/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V202_stereoi.txt --verbose

echo "Evaluation of V106 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V203/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V203_stereoi.txt --verbose


pathForTest='test03' 
pathForEurocYaml='EuRoCtest3'
echo "Launching MH01 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH01 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt "$pathForTest"MH01_stereoi

echo "Launching MH02 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH02 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH02.txt "$pathForTest"MH02_stereoi

echo "Launching MH03 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH03 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH03.txt "$pathForTest"MH03_stereoi

echo "Launching MH04 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH04 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH04.txt "$pathForTest"MH04_stereoi

echo "Launching MH05 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH05 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH05.txt "$pathForTest"MH05_stereoi

echo "Launching V101 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V101 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V101.txt "$pathForTest"V101_stereoi

echo "Launching V102 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V102 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V102.txt "$pathForTest"V102_stereoi

echo "Launching V103 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V103 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V103.txt "$pathForTest"V103_stereoi

echo "Launching V201 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V201 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V201.txt "$pathForTest"V201_stereoi

echo "Launching V202 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V202 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V202.txt "$pathForTest"V202_stereoi

echo "Launching V203 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V203 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V203.txt "$pathForTest"V203_stereoi

echo "Evaluation of MH01 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH01/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH01_stereoi.txt --verbose

echo "Evaluation of MH02 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH02/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH02_stereoi.txt --verbose

echo "Evaluation of MH03 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH03/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH03_stereoi.txt --verbose

echo "Evaluation of MH04 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH04/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH04_stereoi.txt --verbose

echo "Evaluation of MH05 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH05/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH05_stereoi.txt --verbose

echo "Evaluation of V101 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V101/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V101_stereoi.txt --verbose

echo "Evaluation of V102 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V102/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V102_stereoi.txt --verbose

echo "Evaluation of V103 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V103/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V103_stereoi.txt --verbose

echo "Evaluation of V104 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V201/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V201_stereoi.txt --verbose

echo "Evaluation of V105 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V202/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V202_stereoi.txt --verbose

echo "Evaluation of V106 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V203/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V203_stereoi.txt --verbose



pathForTest='test04' 
pathForEurocYaml='EuRoCtest4'
echo "Launching MH01 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH01 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt "$pathForTest"MH01_stereoi

echo "Launching MH02 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH02 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH02.txt "$pathForTest"MH02_stereoi

echo "Launching MH03 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH03 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH03.txt "$pathForTest"MH03_stereoi

echo "Launching MH04 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH04 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH04.txt "$pathForTest"MH04_stereoi

echo "Launching MH05 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH05 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH05.txt "$pathForTest"MH05_stereoi

echo "Launching V101 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V101 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V101.txt "$pathForTest"V101_stereoi

echo "Launching V102 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V102 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V102.txt "$pathForTest"V102_stereoi

echo "Launching V103 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V103 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V103.txt "$pathForTest"V103_stereoi

echo "Launching V201 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V201 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V201.txt "$pathForTest"V201_stereoi

echo "Launching V202 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V202 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V202.txt "$pathForTest"V202_stereoi

echo "Launching V203 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V203 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V203.txt "$pathForTest"V203_stereoi

echo "Evaluation of MH01 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH01/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH01_stereoi.txt --verbose

echo "Evaluation of MH02 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH02/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH02_stereoi.txt --verbose

echo "Evaluation of MH03 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH03/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH03_stereoi.txt --verbose

echo "Evaluation of MH04 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH04/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH04_stereoi.txt --verbose

echo "Evaluation of MH05 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH05/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH05_stereoi.txt --verbose

echo "Evaluation of V101 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V101/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V101_stereoi.txt --verbose

echo "Evaluation of V102 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V102/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V102_stereoi.txt --verbose

echo "Evaluation of V103 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V103/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V103_stereoi.txt --verbose

echo "Evaluation of V104 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V201/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V201_stereoi.txt --verbose

echo "Evaluation of V105 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V202/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V202_stereoi.txt --verbose

echo "Evaluation of V106 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V203/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V203_stereoi.txt --verbose


pathForTest='test05' 
pathForEurocYaml='EuRoCtest5'
echo "Launching MH01 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH01 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH01.txt "$pathForTest"MH01_stereoi

echo "Launching MH02 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH02 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH02.txt "$pathForTest"MH02_stereoi

echo "Launching MH03 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH03 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH03.txt "$pathForTest"MH03_stereoi

echo "Launching MH04 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH04 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH04.txt "$pathForTest"MH04_stereoi

echo "Launching MH05 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/MH05 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/MH05.txt "$pathForTest"MH05_stereoi

echo "Launching V101 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V101 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V101.txt "$pathForTest"V101_stereoi

echo "Launching V102 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V102 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V102.txt "$pathForTest"V102_stereoi

echo "Launching V103 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V103 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V103.txt "$pathForTest"V103_stereoi

echo "Launching V201 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V201 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V201.txt "$pathForTest"V201_stereoi

echo "Launching V202 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V202 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V202.txt "$pathForTest"V202_stereoi

echo "Launching V203 with Stereo-Inertial sensor"
./Examples/Stereo-Inertial/stereo_inertial_euroc ./Vocabulary/ORBvoc.txt ./Examples/Stereo-Inertial/"$pathForEurocYaml".yaml "$pathDatasetEuroc"/V203 ./Examples/Stereo-Inertial/EuRoC_TimeStamps/V203.txt "$pathForTest"V203_stereoi

echo "Evaluation of MH01 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH01/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH01_stereoi.txt --verbose

echo "Evaluation of MH02 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH02/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH02_stereoi.txt --verbose

echo "Evaluation of MH03 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH03/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH03_stereoi.txt --verbose

echo "Evaluation of MH04 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH04/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH04_stereoi.txt --verbose

echo "Evaluation of MH05 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/MH05/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"MH05_stereoi.txt --verbose

echo "Evaluation of V101 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V101/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V101_stereoi.txt --verbose

echo "Evaluation of V102 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V102/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V102_stereoi.txt --verbose

echo "Evaluation of V103 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V103/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V103_stereoi.txt --verbose

echo "Evaluation of V104 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V201/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V201_stereoi.txt --verbose

echo "Evaluation of V105 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V202/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V202_stereoi.txt --verbose

echo "Evaluation of V106 trajectory with Monocular-Inertial sensor"
python2 evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/V203/mav0/state_groundtruth_estimate0/data.csv f_"$pathForTest"V203_stereoi.txt --verbose