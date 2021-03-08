class Colaborador

    attr_accessor :nome, :sobrenome, :cpf, :vacinado

    numcpf = 0

    def cadastrar(colaboradores)
        print  "informe o CPF : "
        numcpf = gets.chomp.to_i
        if colaboradores.length > 0
            colaboradores.each do |c|
                if c[:cpfs] == numcpf
                    puts "CPF ja cadastrado"
                    break
                else
                    gravar(numcpf,colaboradores)  
                end
            end
        else 
            gravar(numcpf,colaboradores)
        end
    end

    def gravar(numcpf, colaboradores)
            x = {nome:"", sobrenome:"", cpfs:"", vacinado:"N"}
            puts " ||||   Cadastrar Colaborador     |||| "
            print "informe o Nome : "
            @nome = gets.strip
            x[:nome] = @nome
            print "informe o Sobrenomeome : "
            @sobrenome = gets.strip
            x[:sobrenome] = @sobrenome
            a = 99
            until a == 0 do
                print "Vacinado (S/N) : "
                @vacinado = gets.strip.upcase
                if @vacinado == "S"  || @vacinado == "N"
                    x[:vacinado] = @vacinado
                    a = 0
                else  
                    puts " Digite S ou N "
                    sleep 2
                end
            end
            @cpf = numcpf
            x[:cpfs] = numcpf
            colaboradores << x
            puts " ====> Colaborador #{x[:nome]} #{@sobrenome} Cadastrado !!!"
            sleep 3
            system 'clear'
    end

end

def atualiza_vacina(colaboradores)
        
        if  colaboradores.length == 0
            nenhum_colaborador_cadastrado
        else
            puts " ||||   Atualiza Colaborador Vacinado     |||| "
            print  "informe o CPF : "
            numcpf = gets.to_i
            colaboradores.each do |c|
                if c[:cpfs] == numcpf
                    if c[:vacinado] == "S"
                        puts "Colaborador ja esta atualizado"
                        break
                    else  
                        c[:vacinado] = "S"
                        puts " ====> Colaborador #{c[:nome]} #{c[:sobrenome]} Atualizado !!!"
                        sleep 3
                    end
                    
                else
                    puts "Colaborador NÃO cadastrado"
                    break
                end
            end
        end
end

def relatorio(colaboradores)
    puts "\n------ Você selecionou a opção 3 ------"
    puts "RELATÓRIO DE COLABORADORES VACINADOS (S OU N)"
    if  colaboradores.length == 0
        nenhum_colaborador_cadastrado
    else
        colaboradores.each do |c|
            puts "============================================================="
            puts "Nome: #{c[:nome]} #{c[:sobrenome]} CPF : #{c[:cpfs]} Vacinado : #{c[:vacinado]}"    
        end
    end
    sleep 5
end

def menu
    puts "Sistema Controle de Vacinação da Empresa Havan"
    
    puts "(1) - Cadastrar Colaborador"
    puts "(2) - Atualizar Colaborador Vacinado "  
    puts "(3) - Relatorio"
    puts "(4) Sair"
    print "\nescolha uma opção : "
end


def opcao_nao_disponivel
    puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
    puts "|||   Você selecionou uma opção que não está disponível  |||"
    puts "|||||||     Reinicie ou escolha a opção (4) Sair     |||||||" 
    puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
    sleep 2
end

def nenhum_colaborador_cadastrado
    puts "\n\n"
    puts "||||||||||||||||||||||||||||||||||||||"
    puts "|  Atenção! Nenhum colaborador cadastrado! |"
    puts "||||||||||||||||||||||||||||||||||||||"
    sleep 2
end

system 'clear'

colaboradores = []

controle = true

while controle do

    menu

    opcao = gets.to_i

    case opcao
        when 1
            colaborador = Colaborador.new
            
            colaborador.cadastrar(colaboradores)
        when 2
            atualiza_vacina(colaboradores)
        when 3
            relatorio(colaboradores)
            system 'clear'
        when 4
            break
        else
            opcao_nao_disponivel
            system 'clear'
    end
end





