Dado("Que eu queira comprar um movel") do 
    product.selectProduct
  end

Quando("Realizar o login") do
    login.appLogin(@emailField, @passwordField, CREDENTIALS[:User], CREDENTIALS[:Password])
end

Quando("Selecionar a forma de pagamento por Boleto") do
    checkout.selectPayOption
end

Entao("Boleto da compra deve ser exibido") do
    checkout.checkBillExist
end

