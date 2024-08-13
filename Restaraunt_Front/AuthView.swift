//
//  AuthView.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 09.08.2024.
//

import SwiftUI

struct AuthView: View {
    
    @State var deskNumber: String = ""
    @State var showEmployeeSignIn = false
    @State var showEmployeeSignIn_2 = false
    
    var body: some View {

        HStack {
            Rectangle()
                .ignoresSafeArea(edges: .top)
                .frame(width: 118, height: .infinity, alignment: .leading)
                .foregroundColor(Color("green"))
                .opacity(0.8)
                
            //Spacer()
            
        }.ignoresSafeArea(edges: .top)
        .background(Image("green_bg_2"))
        //.background(Image("green_bg_2").resizable().aspectRatio(contentMode: .fill))
            
          /*  .overlay {
                VStack {
                    TextField("Номер столика", text: $deskNumber)
                        .padding()
                        .background(.white)
                        .font(.title3)
                    
                    Button {
                        print("Vhod")
                    } label: {
                        Text("Вход в меню!")
                        
                    }.frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("green_2"))
                        .foregroundColor(.white)
                        .font(.title3.bold())
                }.padding(.horizontal, 70)
            }*/
           /* .overlay(alignment: .bottomLeading) {
                Button {
                    self.showEmployeeSignIn_2.toggle()
                    print("\(showEmployeeSignIn_2)")
                } label: {
                    Text("Вход для \n сотрудника")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.leading)
                }
                
            }*//*.sheet(isPresented: $showEmployeeSignIn_2, content: {
                EmployeeAuthView()
            })
            .fullScreenCover(isPresented: $showEmployeeSignIn_2, content: {
                EmployeeAuthView()
            })*/

    }
//}
    
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
