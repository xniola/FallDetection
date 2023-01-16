# Verifico se c'è matching preciso fra le immagini di cam0 e cam1
# Se c'è matching preciso posso usare le stesse labels di cam0

for i in $(seq -w 1 30 $END); do
 cam0=$(ls -l UR-Fall-Dataset-cam0-rgb-adl/train_images | grep fall-$i-cam0* | wc -l)
 cam1=$(ls -l cam1/fall-$i-cam1-rgb | wc -l)
 echo $cam0,$cam1; 
done

