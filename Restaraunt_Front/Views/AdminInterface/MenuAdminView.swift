//
//  MenuAdminView.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 14.08.2024.
//

import SwiftUI

struct MenuAdminView: View {
    
    @State var showAdminProductView = false
    @State var user: User?
    var body: some View {
        List {
            ForEach(defProducts) { product in
                AdminProductCell(product: product)
                //Text("\(product.title)")
                    .listRowSeparator(.hidden)
                    .swipeActions(edge: .trailing,allowsFullSwipe: true) {
                        Button {
                            print("Удалить")
                        } label: {
                            Image(systemName: "trash")
                        }.tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button {
                            print("Редактировать")
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }.tint(.yellow)
                        
                    }
            }
        }.listStyle(.plain)
            .navigationTitle("Меню")
            .overlay(alignment: .bottomTrailing) {
                Button {
                    print("Добавить")
                    self.showAdminProductView.toggle()
                } label: {
                    Image(systemName: "plus")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(Color("green"))
                        .clipShape(Circle())
                        .padding()
                        .foregroundColor(.white)
                }

            }
            .sheet(isPresented: $showAdminProductView) {
                AdminProductView()
            }
            .onAppear {
                print(user?.login ?? "пользователь не найден")
            }
    }
}

struct MenuAdminView_Previews: PreviewProvider {
    static var previews: some View {
        MenuAdminView()
    }
}

let defProducts = [Product(id: UUID().uuidString, title: "Shaslik", price: 150, description: "Vkysnii shashalik"), Product(id: UUID().uuidString, title: "Plov", price: 100, description: "Tadzikskii plov"), Product(id: UUID().uuidString, title: "Okroshka", price: 80, description: "Holodnaya i vkesnaya")]
