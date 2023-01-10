//
//  MockData.swift
//  FloatingButton
//
//  Created by Madalin Zaharia on 10.01.2023.
//

import SwiftUI

struct MockData {
    
    static let colors = [
        "e84393",
        "0984e3",
        "6c5ce7",
        "00b894"
    ].map { Color(hex: $0) }
    
    static let iconImageNames = [
        "sun.max.fill",
        "cloud.fill",
        "cloud.rain.fill",
        "cloud.snow.fill"
    ]
    
    static let iconAndTextImageNames = [
        "plus.circle.fill",
        "minus.circle.fill",
        "pencil.circle.fill"
    ]
    
    static let iconAndTextTitles = [
        "Add New",
        "Remove",
        "Rename"
    ]
}
