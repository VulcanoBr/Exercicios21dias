def menu
    puts "(1) - Calcular a Tabuada"
    puts "(2) - Mostrar Mensagem"
    puts "(3) - Calcula Tabuada & Mostrar Mensagem"
    puts "(4) - Sair"
    print "\nEscolha uma opção : "
end

def calc_tabuada
    print  "\nCalcular a Tabuada do numero : "
    numero = gets.to_i
    n = 1
    #10.times do
    #    resultado = numero * n
    #    tabuada << resultado
    #end
    puts "Tabuada do numero #{numero}"
    #a = 1
    #tabuada.each do |tab|
    #         puts "#{numero} x #{a} = #{numero * a}"
    #         a += 1
    #end 
    (1..10).each do |a|
        puts "#{numero} x #{a} = #{numero * a}"
    end
end

def show_mensagem
    print "\nInforme um Nome : "
    nome = gets.strip
    puts " Mensage do #{nome} - Vamos la Guerreiro"
    
end

def tabuada_mensagem
    calc_tabuada
    show_mensagem
    
end

system ("clear")

tabuada = []

opcao = true

while opcao do

    menu
    x = gets.to_i

    case x
        when 1
            calc_tabuada
            sleep 3
            system 'clear'
        when 2
            show_mensagem
            sleep 3
            system 'clear'
        when 3
            tabuada_mensagem
            sleep 3
            system 'clear'
        when 4
            break
        else
            puts "Opção invalida !!"
    end

end