/*
 
 Exemplo de uso do AbstractFactory:
 
 // Cenário 1: Usuário escolheu Cartão
 
 let cardFactory = CreditCardFactory()
 let cardService = PaymentService(factory: cardFactory)

 cardService.checkout(data: "1234123412341234", amount: 150.00)
 
 Saída:
 💳 Verificando número do cartão...
 💳 Debitando R$ 150.0 no cartão...

// Cenário 2: Usuário escolheu Pix
 
 let pixFactory = PixFactory()
 let pixService = PaymentService(factory: pixFactory)

 pixService.checkout(data: "enzo@email.com", amount: 50.00)
 
 Saída:
 💠 Verificando chave Pix...
 💠 Gerando código 'Copia e Cola'...
 
 */
