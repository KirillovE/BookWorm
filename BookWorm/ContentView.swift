//
//  ContentView.swift
//  BookWorm
//
//  Created by Eugène Kiriloff on 14/03/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
  @Environment(\.modelContext) var modelContext
  @Query var books: [Book]
  @State var showAdd = false

  var body: some View {
    NavigationStack {
      Text("Books count: \(books.count)")
      .navigationBarTitle("BookWorm")
      .sheet(isPresented: $showAdd) {
        AddBookView()
      }
      .toolbar {
        Button("Add", systemImage: "plus") {
          showAdd.toggle()
        }
      }
    }
  }
}

#Preview {
    ContentView()
}
