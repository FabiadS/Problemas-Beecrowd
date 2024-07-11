# BEE 1154 

# Faça um algoritmo para ler um número indeterminado de dados, contendo cada um, a idade de um indivíduo. O último dado, 
# que não entrará nos cálculos, contém o valor de idade negativa. Calcular e imprimir a idade média deste grupo de indivíduos.

idades = []

while True:
    try:
    
        idade = int(input())
        
        if idade >= 0:
            idades.append(idade)
           
    except EOFError:
        break
    
media = sum(idades)/len(idades)
print(f'{media:.2f}')