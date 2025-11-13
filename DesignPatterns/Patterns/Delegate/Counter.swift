//
//  Counter.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

class Counter: CounterDelegate {
    
    var counter: Int = 0 {
        didSet { print("Valor do contador: \(counter)") }
    }

    func increment() {
        self.counter += 1
    }
    
}
