//
//  MovementsView.swift
//  vanillaBK
//
//  Created by 16 on 22/05/23.
//

import SwiftUI

struct movement: Identifiable {
    let id = UUID()
    var monto: Int
    var fecha: String
    var concepto: String
    var icon: Image
    var status: Int // 0 pendiente, 1 completado,
    var referencia: String
}

struct detailAcount {
    var name: String
    var cardNumber: String
    var typeCard: String
    var saldo: Int
}

struct MovementsView: View {
    var dataAccount = detailAcount (
        name: "Alexander Garcia",
        cardNumber: "5555 5555 5555 5555",
        typeCard: "Credito",
        saldo: 2000
    )
    var data = [
        movement(
            monto: 100,
            fecha: "12/12/2023",
            concepto: "Pago colegiatura",
            icon: Image(systemName: "checkmark.seal.fill"),
            status: 0,
            referencia: "Una referencia"
        ),
        movement(
            monto: 70,
            fecha: "12/12/2023",
            concepto: "Pago papitas",
            icon: Image(systemName: "checkmark.seal.fill"),
            status: 1,
            referencia: "Una referencia"
        ),
        movement(
            monto: -100,
            fecha: "12/12/2023",
            concepto: "Pago cena",
            icon: Image(systemName: "checkmark.seal.fill"),
            status: 0,
            referencia: "Una referencia"
        )
    ]
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text(dataAccount.name)
                    Text(dataAccount.cardNumber)
                }.padding(50)
                VStack {
                    List(data) { d in
                        NavigationLink(destination: SecondView(item:d)){
                            VStack {
                                HStack {
                                    d.icon
                                    Text(d.fecha).multilineTextAlignment(.center)
                                    Spacer()
                                    Text(d.concepto)
                                }
                                HStack {
                                    Text("$"+String(d.monto))
                                    Spacer()
                                    Text(String(d.status == 1 ? "Compleada": "Pendiente"))
                                }
                            }.background(d.status == 0 ? Color.red : Color.green)
                                .padding(5.0)
                                .cornerRadius(10.0)
                        }
                    }
                }
            }
        }
    }
}

struct SecondView: View {
    let item: movement
    var body: some View {
        Text(item.referencia)
    }
}

struct MovementsView_Previews: PreviewProvider {
    static var previews: some View {
        MovementsView()
    }
}
