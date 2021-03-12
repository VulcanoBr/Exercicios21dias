system 'clear'
require "../dioInovation/conta_bancaria"
require "../dioinovation/conta_com_taxa"

conta_cadu = ContaComTaxa.new("Cadu", 100)
conta_pessoa2 = ContaBancaria.new("pessoa2", 200)

p "Conta Cadu Inicial ======="
p conta_cadu.saldo # 100

p "Conta Pessoa2 Saldo Inicial ==========="
p conta_pessoa2.saldo  # 200

p "Transferir 50  ==============="
conta_cadu.transferir(conta_pessoa2,50)  # 50

p "Conta Cadu Saldo ======="
p conta_cadu.saldo # 48

p "Conta Pessoa2 Saldo ==========="
p conta_pessoa2.saldo  # 250

p "Transferir mais 60  ==============="

begin
    conta_cadu.transferir(conta_pessoa2,60)  # 60
rescue StandardError => meu_erro
    p "Não foi possiver transferir: #{meu_erro.message} "
end

p "Conta Cadu Saldo ======="
p conta_cadu.saldo # 50

p "Conta Pessoa2 Saldo ==========="
p conta_pessoa2.saldo  # 250