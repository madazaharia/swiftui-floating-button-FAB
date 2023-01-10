//
//  SubmenuButtonPreferenceViewSetter.swift
//  FloatingButton
//
//  Created by Madalin Zaharia on 10.01.2023.
//

import SwiftUI

struct SubmenuButtonPreferenceViewSetter: View {
    
    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .fill(Color.clear)
                .preference(key: SubmenuButtonPreferenceKey.self,
                            value: [geometry.frame(in: .named("ExampleButtonSpace")).size])
        }
    }
}
