system("clear")
alunos = []

controle = true
while controle do
    puts "ESCOLA DE MUSICA vULCANO"
    puts "Escolha uma opção "
    puts "(1) - Cadastrar Aluno"
    puts "(2) - Cadastrar Notas "  
    puts "(3) - Relatorio"
    puts "(4) Sair"

    aluno = {nome: "", matricula: "", notas:[]}
    opcao = gets.to_i
    
    case opcao  
        
        when 1
            puts "Informe o nome do aluno: "
            aluno[:nome] = gets
            puts "Cadastrar Aluno - Informe a matricula do aluno #{aluno[:nome]}"
            aluno[:matricula] = gets.strip
            alunos.push(aluno)
        when 2
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
        when 3
            puts "Relatorio - Informe a matricula do aluno"
            matricula = gets.strip
            aluno_encontrado = false
            alunos.each do |a|
                if a[:matricula] == matricula
                    puts "Aluno #{a[:nome]} matricula #{a[:matricula]} notas #{a[:notas]}"
                    puts "Media = #{a[:notas].sum / a[:notas].length}"
                    aluno_encontrado = true
                    sleep 5
                end
            end
            puts "Matricula #{matricula} não foi encontrada !!!"  unless aluno_encontrado               
        when 4
            break
    else
            puts "opção incorreta "
    end
    sleep 3
    system 'clear'
end

   