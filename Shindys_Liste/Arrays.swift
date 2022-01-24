//
//  Arrays.swift
//  Shindys_Liste
//
//  Created by Malik Amajjoud on 31.12.21.
//

import Foundation
class Arrays: ObservableObject{
    @Published var blau = [Item(Name: "Eier"),Item(Name: "Milch"),Item(Name: "Mehl")]
    @Published var rot = [Item(Name: "Tomaten"),Item(Name: "Gurken"),Item(Name: "Paprika")]
}
