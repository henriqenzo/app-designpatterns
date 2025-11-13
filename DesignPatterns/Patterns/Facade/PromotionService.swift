//
//  PromotionService.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

class PromotionService {
    
    func fetchPromotions() -> [Promotion] {
        let productsInPromotion: [Product] = [
            Product(id: 1, name: "Camiseta azul", size: "M", price: 79.90),
            Product(id: 1, name: "Camiseta preta", size: "M", price: 79.90)
        ]
        
        let promotions: [Promotion] = [
            Promotion(id: 1, product: productsInPromotion[0], priceWithDiscount: 49.90),
            Promotion(id: 2, product: productsInPromotion[1], priceWithDiscount: 59.90)
        ]
        
        return promotions
    }

}
