//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Tomas Havlicek on 12.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //VerticalList()
        
        HorizontalList()
    }
}

struct VerticalList: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                HeaderView()
                CardView(
                    image: "flutter-app", label: "Flutter", title: "Building Complex Layouts With Flutter", author: "Written by Simon NG"
                )
                CardView(
                    image: "swiftui-button", label: "SwiftUI", title: "Drawing A Border With Rounded Corners", author: "Written by Simon NG"
                )
                CardView(
                    image: "macos-programming", label: "MacOS", title: "Building a Simple Editing App", author: "Written by Simon NG"
                )
            }
        }
    }
}

struct HorizontalList: View {
    var body: some View {
        VStack {
            HeaderView()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Group {
                        CardView(
                            image: "flutter-app", label: "Flutter", title: "Building Complex Layouts With Flutter", author: "Written by Simon NG"
                        )
                        CardView(
                            image: "swiftui-button", label: "SwiftUI", title: "Drawing A Border With Rounded Corners", author: "Written by Simon NG"
                        )
                        CardView(
                            image: "macos-programming", label: "MacOS", title: "Building a Simple Editing App", author: "Written by Simon NG"
                        )
                    }
                    .frame(width: 300)
                }
            }
            Spacer()
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Monday, Aug 20")
                    .font(.caption)
                Text("Your Reading")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
