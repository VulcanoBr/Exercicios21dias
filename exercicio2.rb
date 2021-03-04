system("clear") 
puts "Ola seu Manuel "
puts "Informe o nome do produto =>"
prodname = gets.to_s.upcase
puts "Informe o valor do Produto =>"
valprod = gets.to_f
valprodprom = 0
prodnameprom = ""
p
if valprod < 10
    puts "Cliente aceita produto promocional (S/N)"
    prodprom = gets.to_s.upcase.strip
    if prodprom = "s"
        puts "Informe o nome do produto em promoção "
        prodnameprom = gets.to_s.upcase
        puts "Informe o valor do produto em promoção"
        valprodprom = gets.to_f
    end     
end

puts "Produto #{prodname}  Valor R$ #{valprod}"
if prodprom = "s"
    puts "Produto Promoção #{prodnameprom}  Valor R$ #{valprodprom}"
end


valcompra = valprod + valprodprom
puts " Valor da Compra #{valcompra}"
puts "Informe percentual de desconto "
percdesc = gets.to_f
valdesc = (valcompra * percdesc) / 100
valtot = valcompra - valdesc
puts "Valor de desconto R$ #{valdesc}"
puts "Valor Total a pagar R$ #{valtot}"

