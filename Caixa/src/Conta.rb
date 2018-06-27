class Conta
    attr_accessor :saldo

    def initialize(saldo)
        @saldo = saldo
    end

    def saca(valor)
        if valor > 700
            return "Saque não permitido, Valor acima do limite diário de R$ 700."
        elsif valor > @saldo
            return "Saldo insuficiente para saque."
        else
            @saldo -= valor
            return "Saque com sucesso. Muito Obrigado!"
        end
    end
end
