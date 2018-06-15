#language:pt

Funcionalidade: Calculo de IMC

    Sendo um usuário que está preocupado com minha saúde
    Posso calcular meu nível de IMC
    Para saber se devo fazer um regime ou ir para ao BK

    Cenário: IMC saudável

        Dado que meu peso é "70" kilos
        E minha altura é "1.70"
        Quando faço o cálculo
        Então vejo a mensagem "Você é saudável."

    Cenário:  IMC Deu ruim

        Dado que meu peso é "90" kilos
        E minha altura é "1.70"
        Quando faço o cálculo 
        Então vejo a mensagem "Sobrepreso. #partiu Academia."