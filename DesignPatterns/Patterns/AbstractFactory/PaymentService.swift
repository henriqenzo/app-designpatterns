//
//  PaymentService.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import Foundation

class PaymentService {
    private let validator: PaymentValidator
    private let processor: PaymentProcessor
    
    init(factory: PaymentFactory) {
        self.validator = factory.createValidator()
        self.processor = factory.createProcessor()
    }
    
    func checkout(data: String, amount: Double) {
        print("--- Iniciando Checkout ---")
        
        if validator.validate(data: data) {
            processor.processPayment(amount: amount)
            print("✅ Sucesso!")
        } else {
            print("❌ Dados inválidos.")
        }
        
        print("------------------------\n")
    }
}
