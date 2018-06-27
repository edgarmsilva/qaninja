class Conta
    attr_accessor :saldo

    def initialize(saldo)
        @saldo = saldo
    end

    def saca(valor)
        if valor > @saldo
            return "Saldo insuficiente para saque."
        else
            @saldo -= valor
            return "Saque com sucesso. Muito Obrigado!"
        end
    end
end
