
class Bolo

    system 'clear'

    def initialize(nome = nil)
      @nome = nome
    end

    attr_accessor :nome, :cor, :especial

    

    def cozinhar
        puts "Assando #{self.nome}"
    end
    
    def cozinhar_todos(bolos)
        puts "Assando #{self.nome}"
    end
    
   
end 

Bolo.new("Bolo de morango").cozinhar

Bolo.cozinhar_todos("Teste")

Bolo.cozinhar_todos([
    Bolo.new("Bolo de Chocolate"),
    Bolo.new("Bolo de Limão"),
    Bolo.new("Bolo de Coco"),
    Bolo.new("Bolo de Goiabada") ])