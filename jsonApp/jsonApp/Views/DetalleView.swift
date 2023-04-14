//
//  DetalleView.swift
//  jsonApp
//
//  Created by Arturo Sanchez on 14/04/23.
//

import SwiftUI

struct DetalleView: View {
    var id : Int
    @StateObject var user = DetalleViewModel()
    var body: some View {
        VStack{
            if user.avatar.isEmpty{
                ProgressView()
            }else{
                Image(systemName: "persona.fill")
                    .data(url: URL(string: user.avatar)!)
                    .frame(width: 120, height: 120)
                    .clipped()
                    .clipShape(Circle())
                Text(user.first_name).font(.largeTitle)
                Text(user.email).font(.title)
                
            }
           
        }.onAppear{
            user.fetch(id: id)
        }
    }
}


