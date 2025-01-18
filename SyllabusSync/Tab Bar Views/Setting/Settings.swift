//
//  Settings.swift
//  SyllabusSync
//
//  Created by Darren Hsu on 11/28/24.
//


import SwiftUI

struct SettingsList: View {
    
    @AppStorage("darkMode") private var darkMode = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Dark Mode Setting")) {
                    Toggle("Dark Mode", isOn: $darkMode)
                }
            }
            .navigationTitle("Settings")
        }
    }
    
}



