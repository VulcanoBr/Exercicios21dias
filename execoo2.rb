require 'byebug'
class Bolo
    system 'clear'
    
   
    def initialize(nome = "Bolo Madeira")
      @nome = nome
    end
   
    attr_accessor :nome, :cor, :especial

    def cozinhar
        puts "Assando #{self.nome}"
    end

    def self.cozinhar_todos(bolos)
        puts "Assando #{bolos.map(&:nome).join(", ")}"
        puts "Assando #{bolos[0].nome}"
    end
end 

Bolo.new("Bolo de morango").cozinhar
puts "++++++++++++++++++++++"

Bolo.cozinhar_todos([
    Bolo.new("Bolo de Chocolate"),
    Bolo.new("Bolo de Limão"),
    Bolo.new("Bolo de Coco"),
    Bolo.new("Bolo de Goiabada") ])