puts " Escolha uma Fruta  =>  (A) banana  (B) Maçã  (C) Laranja"
fruta = gets.to_s.upcase.strip
case fruta
    when "A"
        puts " O Valor da Fruta e R$ 5,00"
    when "B"
        puts " O Valor da Fruta e R$ 5,00"
    when "C"
        puts " O Valor da Fruta e R$ 5,00"
else
        puts "opção incorreta "
end
