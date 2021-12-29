//
//  ContentView.swift
//  Shindys_Liste
//
//  Created by Malik Amajjoud on 29.12.21.
//

import SwiftUI

struct ContentView: View {
    @State var selected = false
    var body: some View {
        List {
            Section(header: Text("zu kaufen")){
                ForEach(1..<6) { i in
                                Text("Hi")
                            }
            }
            
            Section(header: Text("erledigt")){
                Text("Hi")//.bold()
                Text("Hi")
                Text("Hi")
            }
           
        }
         

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
