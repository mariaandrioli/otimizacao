#!/bin/sh
make
if [ $? -eq 0 ] ; then
  ./escolha < testes/teste.in
  # ./escolha < testes/teste1.in
  # ./escolha < testes/teste2.in
else 
  echo "failed to compile"
fi
make clean