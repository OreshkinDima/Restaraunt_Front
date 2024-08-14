//
//  AdminProductView.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 14.08.2024.
//

import SwiftUI

struct AdminProductView: View {
    
    @State var title: String = ""
    @State var price: Int?
    @State var category: Category = .first
    @State var description: String = ""
    
    
    var body: some View {
        VStack{
            Image(systemName: "camera")
                .resizable()
                .frame(width: 240, height: 200)
                .aspectRatio(contentMode: .fit)
            TextField("Название", text: $title)
                .padding()
                .background(.white)
                .padding(.horizontal)
            TextField("Цена", value: $price, format: .number)
                .padding()
                .background(.white)
                .padding(.horizontal)
            Picker("Категория", selection: $category) {
                ForEach(Category.allCases, id: \.rawValue) {category in
                    Text("\(category.rawValue)")
                        .tag(category)
                }
            }.frame(maxWidth: .infinity)
            .padding(12)
                .background(.white)
                .padding(.horizontal)
                .accentColor(.black)
                //.foregroundColor(.black)
                //.tint(.black)
            TextField("Описание", text: $description)
                .padding()
                .background(.white)
                .padding(.horizontal)
            Button {
                print("Создать")
            } label: {
                Text("Создать")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("green_2"))
                    .foregroundColor(.black)
                    .padding()
                    .font(.title3)
            }

        }.frame(maxHeight: .infinity)
        .background(Color("green_white"))
    }
}

struct AdminProductView_Previews: PreviewProvider {
    static var previews: some View {
        AdminProductView()
    }
}

enum Category: String,CaseIterable {
    case first = "Первые блюда"
    case second = "Вторые блюда"
    case drinks = "Напитки"
    case deserts = "Десерты"
    case salat = "Салаты"
}
