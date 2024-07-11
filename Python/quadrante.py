# BEE 1115

# Escreva um programa para ler as coordenadas (X,Y) de uma quantidade indeterminada de pontos no sistema cartesiano. 
# Para cada ponto escrever o quadrante a que ele pertence. O algoritmo será encerrado quando pelo menos uma de duas coordenadas 
# for NULA (nesta situação sem escrever mensagem alguma).


# -*- coding: utf-8 -*-

while True:
    entrada = input().split()
    
    X = int(entrada[0])
    Y = int(entrada[1])
    
    if X == 0 or Y == 0:
        break
    
    # Determina o quadrante
    if X > 0 and Y > 0:
        print("primeiro")
    elif X < 0 and Y > 0:
        print("segundo")
    elif X < 0 and Y < 0:
        print("terceiro")
    elif X > 0 and Y < 0:
        print("quarto")
