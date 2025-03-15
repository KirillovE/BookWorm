//
//  AddBookView.swift
//  BookWorm
//
//  Created by Eugène Kiriloff on 14/03/2025.
//

import SwiftUI
import SwiftData

struct AddBookView: View {
  @Environment(\.modelContext) var modelContext
  @Environment(\.dismiss) var dismiss
  @State private var title: String = ""
  @State private var author: String = ""
  @State private var genre: String = "Fantasy"
  @State private var rating: Int = 3
  @State private var note: String = ""

  var body: some View {
    NavigationStack {
      Form {
        Section {
          TextField("Book title", text: $title)
          TextField("Book author", text: $author)
          Picker("Book genre", selection: $genre) {
            Text("Fantasy").tag("Fantasy")
            Text("Science Fiction").tag("Science Fiction")
            Text("Mystery").tag("Mystery")
          }
        }

        Section("Add note") {
          Picker("Rating", selection: $rating) {
            ForEach(1 ..< 6) { index in
              Text("\(index)").tag(index)
            }
          }
          TextEditor(text: $note)
        }

        Section {
          Button("Save") {
            let book = Book(
              title: title,
              author: author,
              genre: genre,
              rating: rating,
              note: note
            )
            modelContext.insert(book)
            dismiss()
          }
        }
      }
      .navigationTitle("New book")
    }
  }
}

#Preview {
  AddBookView()
}
