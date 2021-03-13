system 'clear'
class Base

    attr_accessor :id, :nome, :posicao

    def initializer(id, nome, posicao)
        @id = id
        @nome = nome
        @posicao = posicao
    end

    def salvar
        puts "Salvar base => Id : #{id}, Nome : #{nome}, Posicao : #{posicao}"
    end

    def excluir
        puts "Excluir"
    end

    def self.busca_por_nome(nome)
        puts "Busca nome => #{nome}"
    end

    def self.busca_por_id(id)
        puts "Busca por id => #{id}"
    end

    def alterar_posicao
        puts "Alterar posicao base =>  Id : #{id}, Nome : #{nome}, Posicao : #{posicao}"
    end

end

class Filha < Base

    attr_accessor :cargo, :observacao

    def processar 
        puts "Processar filha"
    end

    def alertar
        puts "Alertar filha"
    end

    def alterar_posicao
        puts "Alterar posicao filha => Id : #{id}, Nome : #{nome}, Posicao : #{posicao}, Cargo : #{cargo}, Observacao : #{observacao}"
    end

    def salvar
        puts "Salvar filha => Id : #{id}, Nome : #{nome}, Posição : #{posicao}, Cargo : #{cargo}, Observacao : #{observacao}"
    end

end

base = Base.new
base.id = 1
base.nome = "Vulcano"
base.posicao = 1

base.salvar
base.excluir
base.posicao = 77
base.alterar_posicao
Base.busca_por_nome("Marcelo")
Base.busca_por_id(66)

puts "======   Filha     ================="

filha = Filha.new
filha.id = 3
filha.nome = "Lilian"
filha.posicao = 2
filha.cargo = "Analista"
filha.observacao = "Observacao"
filha.salvar
filha.processar
filha.alertar
filha.excluir
filha.posicao = 999
filha.alterar_posicao
