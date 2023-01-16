#Verifico che il numero di immagini in train_images e test_images sia uguale
#al numero di annotazioni rispettivamente in train_labels e test_labels

'''
echo "CAM0"
echo "TRAIN DATA"
echo "immagini,labels"
for i in $(seq -w 1 30 $END); do
 num=$(ls -l UR-Fall-Dataset-cam0-rgb-adl/train_images | grep fall-$i-cam* | wc -l)
 num1=$(cat UR-Fall-Dataset-cam0-rgb-adl/train_labels.csv | grep fall-$i-cam* | wc -l)
 echo $num,$num1; 
done

echo "TEST DATA"
echo "immagini,labels"
for i in $(seq -w 1 30 $END); do
 num=$(ls -l UR-Fall-Dataset-cam0-rgb-adl/test_images | grep fall-$i-cam* | wc -l)
 num1=$(cat UR-Fall-Dataset-cam0-rgb-adl/test_labels.csv | grep fall-$i-cam* | wc -l)
 echo $num,$num1; 
done

echo "------------"
'''

echo "CAM1"
echo "TRAIN DATA"
echo "immagini,labels"
for i in $(seq -w 1 30 $END); do
 num=$(ls -l cam1/train_images | grep fall-$i-cam* | wc -l)
 num1=$(cat cam1/train_labels.csv | grep fall-$i-cam* | wc -l)
 echo $num,$num1; 
done

echo "TEST DATA"
echo "immagini,labels"
for i in $(seq -w 1 30 $END); do
 num=$(ls -l cam1/test_images | grep fall-$i-cam* | wc -l)
 num1=$(cat cam1/test_labels.csv | grep fall-$i-cam* | wc -l)
 echo $num,$num1; 
done

