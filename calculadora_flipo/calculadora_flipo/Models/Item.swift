//
//  Item.swift
//  calculadora_flipo
//
//  Created by gabrielfelipo on 17/04/22.
//

import Foundation
import UIKit

class Item {
    let nome: String;
    let valor: Float;
    let imagem: String;
    
    
    init(nome: String, preco: Float, imagem: String) {
        self.nome = nome
        self.valor = preco
        self.imagem  = imagem
    }
}
