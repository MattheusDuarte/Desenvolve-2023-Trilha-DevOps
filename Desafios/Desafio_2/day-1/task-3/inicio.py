#!/usr/bin/python3
import base64

def inicio():
  print("Iniciando a execucao")
  print("Vou continuar")
  hello()

def hello():
  valores = ["sol","chuva","vento","noite","lua"]
  print("Oi")
  loop(valores)
  wFile('resultado.txt')

def loop(var1):
  for i in var1:
    print(i)

def wFile(fname):
  content = 'TWVuc2FnZW0gc2VjcmV0YSwgdm9jZSBjb25zZWd1aXUuIE8gY29kaWdvIMOpIDIwMjIuCg==\n'
  decoded_str = base64.b64decode(content).decode('utf-8')
  print(decoded_str)
  f = open(fname, 'w')
  f.write(decoded_str)
  f.close()


inicio()
