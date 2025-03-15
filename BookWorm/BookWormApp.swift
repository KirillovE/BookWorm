//
//  BookWormApp.swift
//  BookWorm
//
//  Created by Eugène Kiriloff on 14/03/2025.
//

import SwiftUI
import SwiftData

@main
struct BookWormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
