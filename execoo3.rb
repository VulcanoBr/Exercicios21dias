system 'clear'

class Animal

    attr_accessor :nome, :cor, :raca, :tamanho, :velocidade, :idade, :id



    def correr 
        puts "Animal correndo"
    end

    def falar
        puts "Animal falando"
    end

    def andar 
        puts "Animal andando"
    end

    def todos_animais
        puts "Relatorio Todos Animais"
    end

    def self.busca_animal(id)
        puts "Animal por Id"
    end

    def self.busca_animal_nome(nome)
        puts "Animal por Nome"
    end

end

animal = Animal.new
animal.correr
animal.andar
animal.falar
animal.todos_animais
Animal.busca_animal("id")
Animal.busca_animal_nome("nome")
