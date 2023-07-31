//
//  ContentView.swift
//  tabview
//
//  Created by Student21 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                TabView {
                    HomeView()
                        .badge(2)
                        .tabItem{
                            Label("Home", systemImage: "house")
                        }
                    SearchView()
                        .tabItem{
                            Label("Search", systemImage: "magnifyingglass")
                        }
                    PhotosView()
                        .tabItem{
                            Label("Photos", systemImage: "photo.artframe")
                        }
                    MessagesView()
                        .badge(1)
                        .tabItem{
                            Label("Messages", systemImage: "message")
                        }
                    ProfileView()
                        .tabItem{
                            Label("Profile", systemImage: "person.circle")
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
