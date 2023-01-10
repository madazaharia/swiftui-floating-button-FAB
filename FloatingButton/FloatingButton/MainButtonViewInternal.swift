//
//  MainButtonViewInternal.swift
//  FloatingButton
//
//  Created by Madalin Zaharia on 10.01.2023.
//

import SwiftUI

struct MainButtonViewInternal<MainView: View>: View {
    
    @Binding var isOpen: Bool
    var mainButtonView: MainView
    
    var body: some View {
        Button(action: { isOpen.toggle() }) {
            mainButtonView
        }
    }
}
