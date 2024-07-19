# BEE 1079

# Leia 1 valor inteiro N, que representa o número de casos de teste que vem a seguir. Cada caso de teste consiste de 3 valores reais, 
# cada um deles com uma casa decimal. Apresente a média ponderada para cada um destes conjuntos de 3 valores, 
# sendo que o primeiro valor tem peso 2, o segundo valor tem peso 3 e o terceiro valor tem peso 5.

# Entrada
# O arquivo de entrada contém um valor inteiro N na primeira linha. Cada N linha a seguir contém um caso de teste com três valores 
# com uma casa decimal cada valor.


N = int(input())

for i in range(1, N+1):
    num = input().split()
    
    N1 = float(num[0])
    N2 = float(num[1])
    N3 = float(num[2])
    
    media_ponderada = (N1 * 2 + N2 * 3 + N3 * 5)/10
    
    print(f'{media_ponderada:.1f}')