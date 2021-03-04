system("clear")
temas =[]
materias = {}
x = []
controle = true

while controle do
    mat = ""
    i = 0
    puts "Montagem da grade do Curso Torne-se um Programador"
    puts"Informe uma materia  (para sair = 99)"
    mat =gets.to_s.strip
    break if mat == "99"
    
    6.times do
        puts "informe um temas"
        tema = gets.to_s.strip
        temas << tema
    end
    
    materias["materia"] = mat
    materias["tema"] = temas
    
    x.push(materias)
    
    system("clear")
end
puts "#{x}"
puts "mate : #{materias}"
materias.each do |mt|
   puts "#{mt}"
end

x.each do |m, f|
    puts "#{m}, #{f}"
    #puts "#{m["materia"]} #{f}"
 end

 x.each do |hash| 
    puts 'Values in this Hash'
    hash.each do |key,value| 
      puts (key.to_s + ': ' + value.to_s) 
    end
  end