//
//  loginview.swift
//  vanillaBK
//
//  Created by 16 on 18/05/23.
//

import SwiftUI

struct loginview: View {
    let gradient = Gradient(colors: [.white, .red])
    var body: some View {
        VStack{
            HStack{
                Spacer()
                VStack{
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .cornerRadius(200)
                        .clipShape(Circle())
                        .clipped()
                        .padding(.top, 44)
                    Text("Bienvenido")
                    Text("OURBANK")
                }
                Spacer()
            }
            Spacer()
        }.background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
    }
}

struct loginview_Previews: PreviewProvider {
    static var previews: some View {
        loginview()
    }
}
