//
//  ContentView.swift
//  SwiftfulSwiftUIinPracticeApp
//
//  Created by jyotirmoy_halder on 12/10/25.
//

import SwiftUI
import SwiftUI
import SwiftfulRouting

struct ContentView: View {
   
    @Environment(\.router) var router
    
    @State private var currentUser: User?
    
    var body: some View {
        List {
            Button("Open Spotify") {
                router.showScreen(.fullScreenCover) {_ in
                    SpotifyHomeView()
                }
            }
            
            Button("Open Bumble") {
                router.showScreen(.fullScreenCover) {_ in
                    BumbleHomeView()
                }
            }
        }
    }
    
    private func getData2() async {
        do {
            currentUser = try await DatabaseHelper().getUsers().last
            
        } catch {
            
        }
    }
}

#Preview {
    RouterView { _ in
        ContentView()
    }
}
