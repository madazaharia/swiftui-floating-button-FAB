//
//  SubmenuButtonPreferenceKey.swift
//  FloatingButton
//
//  Created by Madalin Zaharia on 10.01.2023.
//

import SwiftUI

struct SubmenuButtonPreferenceKey: PreferenceKey {
    typealias Value = [CGSize]
    
    static var defaultValue: Value = []
    
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value.append(contentsOf: nextValue())
    }
}
