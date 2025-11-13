//
//  Control.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

class Control {
    
    private var delegate: CounterDelegate

    init(delegate: CounterDelegate) {
        self.delegate = delegate
    }

    func buttonClicked() {
        self.delegate.increment()
    }
    
}
