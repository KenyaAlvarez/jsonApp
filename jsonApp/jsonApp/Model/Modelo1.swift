//
//  Modelo1.swift
//  jsonApp
//
//  Created by Arturo Sanchez on 14/04/23.
//

import Foundation

struct Modelo1 : Decodable{
    var id : Int
    var name : String
    var email : String
    var address : Address
}

struct Address : Decodable{
    var street : String
    var geo : Geo
}

struct Geo : Decodable{
    var lat : String
}
