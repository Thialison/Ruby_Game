require_relative 'methods'

nome_jogador = bem_vindo
contador_derrota = 0
contador_vitoria = 0 
total_partidas = 0

begin
    nivel_dificuldade = 0
    numero_secreto = 0
    sair = 2
    chute = []
    
    system("clear")
    
    valor_maximo = saudacao_inicial(nivel_dificuldade, nome_jogador, total_partidas)
    numero_secreto = rand(0...valor_maximo)
    
    for tentativa in 1..5
        chute_da_rodada = advinha_numero_secreto(valor_maximo, chute, tentativa)
        chute << chute_da_rodada

        acertou = chute_da_rodada.to_i == numero_secreto
        maior   = chute_da_rodada.to_i < numero_secreto
        menor   = chute_da_rodada.to_i > numero_secreto

        if acertou
            puts "Você Acertou!"
            contador_vitoria = contador_vitoria + 1
            derrota = 0
            break
        end

        derrota = 1

        if maior
            puts "Você Errou! O número secreto é maior"
        else
            puts "Você Errou! O número secreto é menor"
        end
    end

    contador_derrota = contador_derrota + derrota
    total_partidas = placar(contador_vitoria, contador_derrota)

    puts "\nO número secreto era: #{numero_secreto}\n"

    while sair.to_i < 0 || sair.to_i > 1 do
        sair = jogar_novamente
    end

    system("clear")

end until sair.to_i == 0

puts "It's Over #{nome_jogador}"
placar(contador_vitoria, contador_derrota)