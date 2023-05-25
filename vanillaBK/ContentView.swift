//
//  ContentView.swift
//  vanillaBK
//
//  Created by 16 on 18/05/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    var body: some View {
    VStack{
        Text ("Texto").font(.title)
            .foregroundColor(.green)
            .border(Color.blue)
        Spacer()
        TextField("Texto", text:
                    $name).font(.caption)
        Button ("Texto"){
            print("Hola")
        }.font(.headline).background(Color
            .green)
        .border(.black)
        Spacer()// se usa para dividir el espacio de las vistas
        Image(systemName:
                "Person").resizable()
            .frame(width: 300, height:
                    200).aspectRatio(contentMode:
                            .fit).border(.red)
    }.padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
