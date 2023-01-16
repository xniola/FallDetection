# Merge di tutte le sequenze di fall in un'unica cartella

for i in $(seq -w 1 30 $END); do
  mv cam1/fall-$i-cam1-rgb/* cam1/train_images/
done

