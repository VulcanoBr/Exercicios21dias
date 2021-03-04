prodpreco = {}
prodpre = []
1.times do
    puts "produto "
    prod = gets.to_s.strip
    puts "preco"
    preco = gets.to_f
    prodpre << prod << preco
    
    prodpreco = prodpre
end
1.times do
    puts "produto "
    prod = gets.to_s.strip
    puts "preco"
    preco = gets.to_f
    prodpre << prod << preco
    prodpreco = prodpre
end
puts "#{prodpreco}"