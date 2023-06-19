tabuleiro = ['_','_','_',
             '_','_','_',
             '_','_','_']

def apresentar_tabuleiro(tabuleiro):
    print(f'{tabuleiro[0]} {tabuleiro[1]} {tabuleiro[2]}')
    print(f'{tabuleiro[3]} {tabuleiro[4]} {tabuleiro[5]}')
    print(f'{tabuleiro[6]} {tabuleiro[7]} {tabuleiro[8]}')

apresentar_tabuleiro(tabuleiro)

jogador_x = "X"
jogador_O = "O"

def realizar_jogada(tabuleiro, jogador):
    
    print(f'turno do jogador {jogador}')
    indice = int(input("realize sua jogada, escolha o indice  de 0-8: "))
    
    if tabuleiro[indice] == '_':

        tabuleiro[indice] = jogador
    else:
        print('jogada inválida !!!')

def checar_vitoria(tabuleiro, jogador):
    #verifica linhas
    if (tabuleiro[0] == jogador and tabuleiro[1] == jogador and tabuleiro[2] == jogador) or \
        (tabuleiro[3] == jogador and tabuleiro[4] == jogador and tabuleiro[5] == jogador) or \
        (tabuleiro[6] == jogador and tabuleiro[7] == jogador and tabuleiro[8] == jogador) or \
        (tabuleiro[0] == jogador and tabuleiro[3] == jogador and tabuleiro[6] == jogador) or \
        (tabuleiro[1] == jogador and tabuleiro[4] == jogador and tabuleiro[7] == jogador) or \
        (tabuleiro[2] == jogador and tabuleiro[5] == jogador and tabuleiro[8] == jogador) or \
        (tabuleiro[0] == jogador and tabuleiro[4] == jogador and tabuleiro[8] == jogador) or \
        (tabuleiro[2] == jogador and tabuleiro[4] == jogador and tabuleiro[6] == jogador):

        print(f'Jogador vencedor {jogador}')
        return True

    else:
        
        return False

def checar_empate(tabuleiro):
    if '_' in tabuleiro:
        return False
    else:
        print("Jogo emptado !!! ")
        return True
while True : 

    realizar_jogada(tabuleiro, jogador_x)
    apresentar_tabuleiro(tabuleiro)

    if checar_vitoria(tabuleiro) or checar_empate(tabuleiro):
        break
    
    realizar_jogada(tabuleiro, jogador_O)

    if checar_vitoria(tabuleiro) or checar_empate(tabuleiro):
        break