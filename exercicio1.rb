system("clear") 
puts "Digite o valor Total do Pedido "
a = gets.to_i
puts "Digite o valor da porcentagem de desconto "
b = gets.to_i
valordesconto = (a * b) / 100
valorcomdesconto = a - valordesconto
puts "Valor Pedido = #{a},00 "
puts "Valor Percentual desconto = #{b}% "
puts "Valor desconto = #{valordesconto},00 "
puts "Valor Pedido com desconto = #{valorcomdesconto},00 "
