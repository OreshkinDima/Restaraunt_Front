//
//  EmployeeAuthView.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 09.08.2024.
//

import SwiftUI

struct EmployeeAuthView: View {
    
    @State var login: String = ""
    @State var password: String = ""
    @State var showAdminMenu: Bool = false
    @State var user: User?
    
    var body: some View {
        
        HStack {
            Rectangle()
                .ignoresSafeArea()
                .frame(width: 100,  height: UIScreen.main.bounds.height)
                //.frame(width: 118, height: .infinity, alignment: .leading)
                .foregroundColor(Color("green"))
                .opacity(0.8)
            Spacer()
            
        }.background(Image("green_bg_2").resizable().aspectRatio(contentMode: .fill   ))
        
            .ignoresSafeArea()
            .overlay {
                VStack {
                    Text("Вход для сотрудников")
                        .font(.title2.bold())
                        .foregroundColor(Color("green_3"))
                    TextField("Login", text: $login)
                        .padding()
                        .background(.white)
                        .font(.title3)
                    
                    TextField("Password", text: $password)
                        .padding()
                        .background(.white)
                        .font(.title3)

                    Button {
                        Task{
                            do {
                                self.user = try await NetworkService.shared.auth(login: login, password: password)
                                print("Vhod")
                                self.showAdminMenu.toggle()
                            } catch {
                                print("Ошибка аутентификации")
                            }
                        }

                    } label: {
                        Text("Войти!")
                           
                    }.frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("green_2"))
                        .foregroundColor(.white)
                        .font(.title3.bold())
                }.padding(.horizontal, 70)
            }.fullScreenCover(isPresented: $showAdminMenu) {
                MenuAdminView(user:user)
            }
    }
}

struct EmployeeAuthView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeAuthView()
    }
}
