#language:pt
Funcionalidade: Saque no caixa eletronico
    Sendo um cliente correntista do banco
    Posso sacar dinheiro em caixas eletronicos
    Para que eu possa comprar em estabelecimentos que não aceitam cartão crédito ou débito

Contexto: conta corrente

    Dado que eu sou um correntista

Cenário: saque no caixa

    E meu saldo é de R$ "500"
    Quando eu solicito um saque no valor de R$ "100"
    Então devo ver a mensagem "Saque com sucesso. Aguarde a contagem das notas!"
    E meu saldo final será de R$ "400"

Cenário: Valor superior ao meu saldo

    E meu saldo é de R$ "100"
    Quando eu solicito um saque no valor de R$ "200"
    Então devo ver a mensagem "Saldo Insuficiente!"
    E meu saldo final será de R$ "100"


