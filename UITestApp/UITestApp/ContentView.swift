//
//  ContentView.swift
//  UITestApp
//
//  Created by Cheng, Rudolf Yin-Ting (ES) on 2021-06-09.
//

import SwiftUI

struct ContentView: View {

    @State private var didTap = false

    var body: some View {
        ScrollView {
            VStack {
                Text("""
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit pellentesque habitant morbi tristique senectus et. Lobortis scelerisque fermentum dui faucibus in ornare quam viverra. Mattis nunc sed blandit libero volutpat sed cras ornare arcu. Non blandit massa enim nec dui nunc mattis enim. Amet dictum sit amet justo. Aliquam etiam erat velit scelerisque in dictum non consectetur a. Vestibulum morbi blandit cursus risus at ultrices mi tempus. Enim ut sem viverra aliquet eget sit amet tellus cras. Eleifend donec pretium vulputate sapien nec sagittis aliquam. Vivamus arcu felis bibendum ut tristique et egestas. In ante metus dictum at tempor commodo.

                    Aenean vel elit scelerisque mauris pellentesque pulvinar. Dolor morbi non arcu risus quis. Sodales ut eu sem integer vitae justo. Duis ultricies lacus sed turpis tincidunt. Etiam dignissim diam quis enim lobortis. Quis risus sed vulputate odio. Semper eget duis at tellus at urna condimentum mattis. Tempus egestas sed sed risus pretium quam vulputate. Sit amet consectetur adipiscing elit. Tortor dignissim convallis aenean et. Ultricies tristique nulla aliquet enim tortor at auctor. In iaculis nunc sed augue lacus viverra vitae. Rhoncus est pellentesque elit ullamcorper dignissim.
                    """)
                    .padding()
                Button("Tap Me!") {
                    self.didTap = !self.didTap
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                .background(didTap ? Color.red : Color.green)
                .accessibility(identifier: "Button")
            }
            .padding(.vertical, 10)
        }
        .accessibilityElement(children: .contain)
        .accessibility(identifier: "ScrollView")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
