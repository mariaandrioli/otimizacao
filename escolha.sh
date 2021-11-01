#!/bin/sh
make
FILES="testes/*"
if [ $? -eq 0 ] ; then
  for f in $FILES
  do
    echo "Processing $f file..."
    ./escolha < $f
    # lp_solve output.lp
    echo "\n"
  done
else 
  echo "failed to compile"
fi
make clean