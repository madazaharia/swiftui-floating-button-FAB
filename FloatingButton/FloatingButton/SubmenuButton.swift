//
//  SubmenuButton.swift
//  FloatingButton
//
//  Created by Madalin Zaharia on 10.01.2023.
//

import SwiftUI

struct SubmenuButton<ButtonView: View>: View {
    
    var buttonView: ButtonView
    var action: () -> Void = { }
    
    var body: some View {
        Button(action: { action() }) {
            buttonView
        }
        .buttonStyle(PlainButtonStyle())
    }
}
