//
//  Menu.swift
//  SCC-NBC-Assignment
//
//  Created by Joon Baek on 2023/12/07.
//

import Foundation

class Menu {
    var products: [ProductProtocol]
    
    init(products: [ProductProtocol]) {
        self.products = products
    }
    
    func printMenu() {
        print("[ SHAKESHACK MENU ]")
        for (index, product) in products.enumerated() {
            print("\(index + 1). \(product.name ?? "") | \(product.price ?? 0)원 | \(product.description ?? "")")
        }
        print("0. 종료")
    }
    
    func selectProduct(at index: Int) -> ProductProtocol? {
        if index >= 0 && index < products.count {
            return products[index]
        }
        return nil
    }
}
