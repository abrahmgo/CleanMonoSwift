//
//  CleanMonoSwiftApp.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 28/01/21.
//

import SwiftUI
import NetworkCore

@main
struct CleanMonoSwiftApp: App {
    
    init() {
        NetworkCoreAPI.setup(with: APIConfig.self)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
