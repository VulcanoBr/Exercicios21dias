
# ========  Definição das classes

def menu
    puts "ESCOLA DE MUSICA VULCANO"
    puts "Escolha uma opção "
    puts "(1) - Cadastrar Aluno"
    puts "(2) - Cadastrar Notas "  
    puts "(3) - Relatorio"
    puts "(4) Sair"
    print "\nSelecione a opção: "
    
end

def cadastra_aluno(alunos)
    aluno = {nome: "", matricula: "", notas:[]}
    puts "Informe o nome do aluno: "
    aluno[:nome] = gets.strip
    puts "Cadastrar Aluno - Informe a matricula do aluno #{aluno[:nome]}"
    aluno[:matricula] = gets.strip
    alunos.push(aluno)
    
end

def cadastra_nota_aluno(alunos)
    puts " Cadastrar notas - Informe a matricula do aluno"
    matricula = gets.strip
    aluno_encontrado = false
    alunos.each do |a|
        if a[:matricula] == matricula
            puts "Informe a nota da matricula #{a[:matricula]}"
            a[:notas] << gets.to_f
            aluno_encontrado = true
        end
    end
    puts "Matricula #{matricula} não foi encontrada !!!"  unless aluno_encontrado
end

def relatorio_aluno(alunos)
    if alunos.length == 0
        puts "\nNão ha aluno(s) Cadastrado(s) !!! "
    else 
        puts "Relatorio - Informe a matricula do aluno"
        matricula = gets.strip
        aluno_encontrado = false
        alunos.each do |a|
            if a[:matricula] == matricula
                puts "Aluno #{a[:nome]}, Matricula #{a[:matricula]}, Notas #{a[:notas].join(", ")}"
                puts "Media das notas  = #{a[:notas].sum.to_f / a[:notas].length.to_f}"
                aluno_encontrado = true
                sleep 4
            end
        end
        puts "Matricula #{matricula} não foi encontrada !!!"  unless aluno_encontrado  
    end
end

# ============ Logica  do programa ==============================================

system 'clear'

alunos = []

controle = true
while controle do
    
    menu
    
    opcao = gets.to_i

    case opcao  
        
        when 1
            cadastra_aluno(alunos)
        when 2
            cadastra_nota_aluno(alunos)
        when 3
            relatorio_aluno(alunos)           
        when 4
            break
    else
            puts "opção incorreta "
    end
    sleep 2
    system 'clear'
end

   