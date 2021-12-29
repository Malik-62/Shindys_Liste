//
//  ItemView.swift
//  Shindys_Liste
//
//  Created by Malik Amajjoud on 29.12.21.
//

import SwiftUI

struct ItemView: View {
    let item:Item
    init(item: Item){
        self.item = item
    }
    var body: some View {
        Text(item.name)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item(Name: "Brot"))
    }
}
