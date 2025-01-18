//
//  ContentView.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            
            ChatBot()
                .tabItem {
                    Label("ChatBot", systemImage: "message")
                }
            EquivalencyList()
                .tabItem {
                    Label("UCI Courses", systemImage: "graduationcap")
                }
             
            SyllabusList()
                .tabItem {
                    Label("Syllabi", systemImage: "doc.text")
                }
            
            ExportButtonView()
                .tabItem {
                    Label("PDF", systemImage: "printer")
                }
            SettingsList()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
             
        }   // End of TabView
        .onAppear {
            // Display TabView with opaque background
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
}
