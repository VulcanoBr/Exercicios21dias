notas = []
nx = true

while nx  do
    system "clear"
    puts "De uma nota de 1 a 5, para a aula de Torne-se um Programador"
    nota = gets.chomp.to_f
    break if  nota == -75

    if (1..5).include?(nota)
        notas << nota
    else 
        puts "Sua nota #{nota} é invalida !!! Informe uma nota de 1 a 5"
        sleep(3)
    end
end

if notas.length > 0
    puts " O NPS e de #{notas.sum / notas.length}"
else
    puts "Não foi possivel Calcular o NPS, não ha notas"
end