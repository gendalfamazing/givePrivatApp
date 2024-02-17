//
//  DataModel.swift
//  8button
//
//  Created by Artur Vladymcev on 5.12.23.
//

import SwiftUI

let items = [
    Item(name: "Помидоры"),
    Item(name: "Бананы"),
    Item(name: "Яблоки"),
    // Другие элементы вашего списка
]

let dataModel = DataModel(items: items)
ContentView2(dataModel: dataModel)

