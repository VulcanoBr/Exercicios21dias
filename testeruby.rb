p "digite uma palavra "
palavra = gets.strip
inverso = palavra.reverse
palavra == inverso ? 
    puts "A palavra #{palavra} e uma palavra palindromo" 
else
    puts "A palavra #{palavra} NÃO e uma palavra palindromo"
end
