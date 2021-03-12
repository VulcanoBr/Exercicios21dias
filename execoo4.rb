system 'clear'

class Animal

    attr_accessor :nome, :cor, :raca, :tamanho, :velocidade, :idade, :id

    def initialize(nome = nil, id = nil)
        @nome = nome
        @id = id
    end

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
        puts "Animal por Id #{id}"
    end

    def self.busca_animal_nome(nome)
        puts "Animal por Nome #{nome}"
    end

    def self.salvar_lista(lista)
        puts "Salva Lista"
    end

end

lista_animais = []

animal = Animal.new
animal.correr
animal.andar
animal.falar
x = animal.todos_animais
xx = Animal.busca_animal(1)
xx = Animal.busca_animal_nome([("leao"), ("cachorro"), ("gato"), ("pato")])
Animal.salvar_lista("lista_animais")
