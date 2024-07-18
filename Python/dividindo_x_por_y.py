# BEE 1116

# Escreva um algoritmo que leia 2 números e imprima o resultado da divisão do primeiro pelo segundo. Caso não for possível 
# mostre a mensagem “divisao impossivel” para os valores em questão.

# Entrada
# A entrada contém um número inteiro N. Este N será a quantidade de pares de valores inteiros (X e Y) que serão lidos em seguida.

# Saída
#Para cada caso mostre o resultado da divisão com um dígito após o ponto decimal, ou “divisao impossivel” caso não seja 
# possível efetuar o cálculo.

N = int(input())

for i in range(1, N+1):
  entrada = input().split()
    
  X = int(entrada[0])
  Y = int(entrada[1])

  if(Y != 0):
    divisao = X / Y
    print(f'{divisao:.1f}')
  else:
    print("divisao impossivel")