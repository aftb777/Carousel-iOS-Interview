//
//  ProductView.swift
//  Carousel Interview
//
//

import SwiftUI
import Foundation

struct ProductView: View {
    

    
    @State private var products = (1...20).map {
        ProductModel(title: "Product \($0)", subTitle: "Subtitle \($0)", isFollowed: false)
    }
    
    var body: some View {
        List(products.indices, id : \.self) {index in
            
            HStack{
                
                VStack{
                    Text(products[index].title)
                    Text(products[index].subTitle)
                }
                
                Spacer()
                
                Button {
                    products[index].isFollowed.toggle()
                } label : {
                    Text(products[index].isFollowed ? "unFollow" : "Follow")
                        .foregroundStyle(Color.black)
                        .frame(width: 70, height: 40)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                
            }
        }
    }
}

#Preview {
    ProductView()
}
