//
//  ProductModel.swift
//  Carousel Interview
//
//

import Foundation
import SwiftUI

struct ProductModel : Identifiable {
    let id = UUID()
    let title : String
    let subTitle : String
    var isFollowed : Bool = false
}
