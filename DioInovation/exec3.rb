system 'clear'

idade_dias = gets.strip.to_i

idade_anos = idade_dias / 365
idade_dias %= (365 * idade_anos) if idade_anos > 0

idade_meses = idade_dias / 30
idade_dias %= (idade_meses * 30)  if idade_meses > 0    #complete o codigo

puts "#{idade_anos} ano(s)"
puts "#{idade_meses} mes(es)"
puts "#{idade_dias} dia(s)" 