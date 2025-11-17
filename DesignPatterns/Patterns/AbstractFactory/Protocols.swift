//
//  Protocols.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 17/11/25.
//

import Foundation

protocol PaymentValidator {
    func validate(data: String) -> Bool
}

protocol PaymentProcessor {
    func processPayment(amount: Double)
}

protocol PaymentFactory {
    func createValidator() -> PaymentValidator
    func createProcessor() -> PaymentProcessor
}
