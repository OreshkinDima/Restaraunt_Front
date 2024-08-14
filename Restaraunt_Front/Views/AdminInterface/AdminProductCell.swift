//
//  AdminProductCell.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 14.08.2024.
//

import SwiftUI

struct AdminProductCell: View {
    
    var product: Product
    
    var body: some View {
        HStack{
            Image("green_bg")
                .resizable()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading,spacing: 9){
                Text(product.title)
                    .bold()
                Text("\(product.price) $")
                    .bold()
             
            }
            Spacer()
        }
    }
}

struct AdminProductCell_Previews: PreviewProvider {
    static var previews: some View {
        AdminProductCell(product: defProducts[0])
    }
}
