//
//  ContentView.swift
//  Shindys_Liste
//
//  Created by Malik Amajjoud on 29.12.21.
//

import SwiftUI

struct ContentView: View {
    // @State var blau = [Item]()
    // @State var rot = [Item]()
    @State var neuerName = ""
    @State var Schaukel = true
    @State var blau = [Item(Name: "Eier"),Item(Name: "Milch"),Item(Name: "Mehl")]
    @State var rot = [Item(Name: "Tomaten"),Item(Name: "Gurken"),Item(Name: "Paprika")]
    
    var body: some View {
        
        VStack{
            HStack{
                SearchBar(text: $neuerName)
                Image(systemName: "plus.circle.fill")
            }.padding()
            
            if Schaukel {
                List {
                    Section(header: Text("einkaufen")){
                        ForEach(0..<blau.count) { i in
                            Button(blau[i].name) {
                                rot.append(blau[i])
                                blau.remove(at: i)
                            }
                            
                        }
                    }.tint(.green)
                    
                    Section(header: Text("erledigt")){
                        ForEach(0..<rot.count) { i in
                            Button(rot[i].name) {
                                blau.append(rot[i])
                                rot.remove(at: i)
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
