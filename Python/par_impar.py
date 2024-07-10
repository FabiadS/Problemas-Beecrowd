# BEE 1074
# Leia um valor inteiro N. Este valor será a quantidade de valores que serão lidos em seguida. Para cada valor lido, 
# mostre uma mensagem em inglês dizendo se este valor lido é par (EVEN), ímpar (ODD), positivo (POSITIVE) ou negativo (NEGATIVE). 
# No caso do valor ser igual a zero (0), embora a descrição correta seja (EVEN NULL), pois por definição zero é par, seu programa 
# deverá imprimir apenas NULL.

# -*- coding: utf-8 -*-

N = int(input())

for i in range(0, N):
    num = int(input())
    if (num == 0):
        print("NULL")
    elif(num % 2 == 0 and num > 0):
        print("EVEN POSITIVE")
    elif (num % 2 == 0 and num < 0):
        print("EVEN NEGATIVE")
    elif (num % 2 != 0 and num > 0):
        print("ODD POSITIVE")
    elif (num % 2 != 0 and num < 0):
        print("ODD NEGATIVE")