# BEE 1048

# Leia o salário do funcionário e calcule e mostre o novo salário, bem como o valor de reajuste ganho e o índice reajustado, 
# em percentual.

# Entrada
# A entrada contém apenas um valor de ponto flutuante, com duas casas decimais.

# Saída
# Imprima 3 linhas na saída: o novo salário, o valor ganho de reajuste (ambos devem ser apresentados com 2 casas decimais) e 
# o percentual de reajuste ganho.

# -*- coding: utf-8 -*-

salario = float(input())

if (salario <= 400):
    percentual = 0.15
elif (salario <= 800):
    percentual = 0.12
elif (salario <= 1200):
    percentual = 0.10
elif (salario <= 2000):
    percentual = 0.07
else:
    percentual = 0.04

novo_salario = salario + (salario * percentual)
reajuste = salario * percentual

print(f'Novo salario: {novo_salario:.2f}')
print(f'Reajuste ganho: {reajuste:.2f}')
print(f"Em percentual: {percentual * 100:.0f} %")