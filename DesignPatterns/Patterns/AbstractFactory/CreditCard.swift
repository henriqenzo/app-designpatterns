//
//  CreditCard.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import Foundation

class CreditCardValidator: PaymentValidator {
    func validate(data: String) -> Bool {
        // Lógica fake: verifica se tem 16 dígitos
        print("💳 Verificando número do cartão: \(data)")
        return data.count == 16
    }
}

class CreditCardProcessor: PaymentProcessor {
    func processPayment(amount: Double) {
        print("💳 Debitando R$ \(amount) no cartão de crédito via Gateway...")
    }
}

class CreditCardFactory: PaymentFactory {
    func createValidator() -> PaymentValidator {
        return CreditCardValidator()
    }
    
    func createProcessor() -> PaymentProcessor {
        return CreditCardProcessor()
    }
}
