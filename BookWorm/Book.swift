//
//  Book.swift
//  BookWorm
//
//  Created by Eugène Kiriloff on 14/03/2025.
//

import SwiftData

@Model
class Book {
  var title: String
  var author: String
  var genre: String
  var rating: Int
  var note: String

  init(
    title: String,
    author: String,
    genre: String,
    rating: Int,
    note: String
  ) {
    self.title = title
    self.author = author
    self.genre = genre
    self.rating = rating
    self.note = note
  }
}
