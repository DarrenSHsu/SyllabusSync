//
//  ProgressViewStyle.swift
//  AdventurePlanner
//
//  Created by Osman Balci on 3/25/24.
//  Copyright © 2024 Osman Balci. All rights reserved.
//

import SwiftUI

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                    radius: 4.0, x: 1.0, y: 2.0)
    }
}
