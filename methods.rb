def placar(vitoria, derrota)
    total_partidas = vitoria + derrota
    puts "\n########## Placar ############"
    puts "Total de Partidas: #{total_partidas}" 
    puts "Vitórias: #{vitoria}"
    puts "Derrotas: #{derrota}\n"
    total_partidas
end

def advinha_numero_secreto(valor_maximo, ultimos_chutes, tentativa)
    puts "\nO número secreto vai de 0 à #{valor_maximo}"
    puts "Últimos chutes: #{ultimos_chutes}"
    puts "Tentativa #{tentativa} de 5"
    puts "Faça o seu chute: " 
    chute_da_rodada = gets.strip
end

def jogar_novamente
    puts "\n############################"
    puts "Deseja jogar novamente?"
    puts "1 - Jogar Novamente"
    puts "0 - Sair"
    escolha = gets.strip
end

def bem_vindo
    puts "\nInforme seu player: "
    nome = gets.strip
end

def saudacao_inicial(nivel_dificuldade, nome, total_partidas)
    while nivel_dificuldade.to_i < 1 || nivel_dificuldade.to_i > 5 do

        if total_partidas == 0
            puts "\nBem Vindo ao game " + nome
        end

        if total_partidas >= 1 && total_partidas < 3 
            puts "\nJogue novamente #{nome}"
        end

        if total_partidas >= 3
            puts "\nVocê é insano #{nome}"
        end

        puts "Escolha o nível de dificuldade:"
        puts "1 - Mamão com açucar"
        puts "2 - Beginner"
        puts "3 - Medium"
        puts "4 - Hard"
        puts "5 - God"
        nivel_dificuldade = gets.strip
    end

    case nivel_dificuldade.to_i
    when 1
        valor_maximo = 30
    when 2
        valor_maximo = 50
    when 3
        valor_maximo = 90
    when 4
        valor_maximo = 150
    else
        valor_maximo = 200
    end
    valor_maximo
end