//
//  RatingView.swift
//  BookWorm
//
//  Created by Eugène Kiriloff on 15/03/2025.
//

import SwiftUI

struct RatingView: View {
  @Binding var rating: Int

  var label = ""
  var maxRating: Int = 5

  var offImage: Image?
  var onImage = Image(systemName: "star.fill")

  var offColor = Color.gray
  var onColor = Color.yellow

  var body: some View {
    if !label.isEmpty {
      Text(label)
    }
    HStack {
      ForEach(1...maxRating, id: \.self) { index in
        Button {
          rating = index
        } label: {
          image(for: index)
            .foregroundColor(index > self.rating ? offColor : onColor)
        }
        .buttonStyle(.plain)
      }
    }
  }

  private func image(for rating: Int) -> Image {
    if rating > self.rating {
      offImage ?? onImage
    } else {
      onImage
    }
  }
}

#Preview {
  RatingView(rating: .constant(3))
}
