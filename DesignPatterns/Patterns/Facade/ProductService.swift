//
//  ProductService.swift
//  DesignPatterns
//
//  Created by Enzo Henrique Botelho Romão on 12/11/25.
//

import Foundation

class ProductService {
    
    func fetchProducts() -> [Product] {
        let products: [Product] = [
            Product(id: 1, name: "Calça moletom", size: "G", price: 139.90),
            Product(id: 2, name: "Calça jeans", size: "40", price: 119.90),
            Product(id: 3, name: "Camiseta branca", size: "M", price: 79.90),
            Product(id: 4, name: "Touca preta", size: "Unico", price: 49.90)
        ]
        
        return products
    }

}
