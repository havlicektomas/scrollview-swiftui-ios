//
//  CardView.swift
//  SwiftUIScrollView
//
//  Created by Tomas Havlicek on 12.10.2021.
//

import SwiftUI

struct CardView: View {
    
    var image: String
    var label: String
    var title: String
    var author: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack (alignment: .leading) {
                    Text(label)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(title)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .minimumScaleFactor(0.5)
                    Text(author)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(
                    Color.black.opacity(0.1),
                    lineWidth: 1
                )
        )
        .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            image: "flutter-app", label: "Flutter", title: "Building Complex Layouts With Flutter", author: "Written by Simon NG"
        )
    }
}
