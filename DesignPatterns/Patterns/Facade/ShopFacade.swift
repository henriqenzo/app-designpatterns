//
//  ShopFacade.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

class ShopFacade {
    
    private let productService: ProductService
    private let promotionService: PromotionService
    
    init() {
        productService = ProductService()
        promotionService = PromotionService()
    }
    
    func getProducts() -> [Product] {
        return productService.fetchProducts()
    }
    
    func getPromotions() -> [Promotion] {
        return promotionService.fetchPromotions()
    }
    
}
