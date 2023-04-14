//
//  jsonAppApp.swift
//  jsonApp
//
//  Created by Arturo Sanchez on 13/04/23.
//

import SwiftUI

@main
struct jsonAppApp: App {

    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
            
        }
    }
}
