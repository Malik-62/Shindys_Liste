//
//  ContentView.swift
//  Shindys_Liste
//
//  Created by Malik Amajjoud on 29.12.21.
//

import SwiftUI

struct ContentView: View {
    init(){
        arrays=Arrays()
        ListeSchicken()
        
        ListeLaden()
        
        ListeLadn()
    }
    // @State var blau = [Item]()
    // @State var rot = [Item]()
    @State var neuerName = ""
    @State var Schaukel = true
    @ObservedObject var arrays:Arrays
    
    
    var body: some View {
        
        VStack{
            HStack{
                SearchBar(text: $neuerName)
                Image(systemName: "plus.circle.fill")
            }.padding()
            
            if Schaukel {
                List {
                    Section(header: Text("einkaufen")){
                        ForEach(0..<arrays.blau.count) { i in
                            Button(arrays.blau[i].name) {
                                arrays.rot.append(arrays.blau[i])
                                arrays.blau.remove(at: i)
                            }
                            
                        }
                    }.tint(.green)
                    
                    Section(header: Text("erledigt")){
                        ForEach(0..<arrays.rot.count) { i in
                            Button(arrays.rot[i].name) {
                                arrays.blau.append(arrays.rot[i])
                                arrays.rot.remove(at: i)
                            }.tint(.red)
                        }
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
