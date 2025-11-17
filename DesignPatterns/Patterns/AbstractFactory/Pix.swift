//
//  Pix.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import Foundation

class PixValidator: PaymentValidator {
    func validate(data: String) -> Bool {
        // Lógica fake: verifica se tem @ (chave email)
        print("💠 Verificando chave Pix: \(data)")
        return data.contains("@")
    }
}

class PixProcessor: PaymentProcessor {
    func processPayment(amount: Double) {
        print("💠 Gerando código 'Copia e Cola' para R$ \(amount)...")
    }
}

class PixFactory: PaymentFactory {
    func createValidator() -> PaymentValidator {
        return PixValidator()
    }
    
    func createProcessor() -> PaymentProcessor {
        return PixProcessor()
    }
}
