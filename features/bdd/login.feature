# language: pt
@testesLogin
Funcionalidade: Compra nas Lojas Americanas via
Validar fluxo de compra via boleto.

    Dado Que eu queira comprar um movel
    Quando Realizar o login
    E Selecionar a forma de pagamento por Boleto
    Entao Boleto da compra deve ser exibido