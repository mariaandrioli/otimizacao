#!/bin/sh
make
FILES="testes/*"
if [ $? -eq 0 ] ; then
  for f in $FILES
  do
    echo "Processing $f file..."
    ./escolha < $f
    echo "\n"
  done
  # ./escolha < testes/teste.in
  # ./escolha < testes/teste1.in
  # ./escolha < testes/teste2.in
else 
  echo "failed to compile"
fi
make clean