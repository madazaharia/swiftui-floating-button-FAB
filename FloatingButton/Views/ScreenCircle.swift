//
//  ScreenCircle.swift
//  FloatingButton
//
//  Created by Madalin Zaharia on 10.01.2023.
//

import SwiftUI

struct ScreenCircle: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        let mainButton1 = MainButton(imageName: "message.fill", colorHex: "f7b731")
        let mainButton2 = MainButton(imageName: "umbrella.fill", colorHex: "eb3b5a")
        let buttonsImage = MockData.iconImageNames.enumerated().map { index, value in
            IconButton(imageName: value, color: MockData.colors[index])
        }
        
        let menu1 = FloatingButton(mainButtonView: mainButton2, buttons: buttonsImage.dropLast())
            .circle()
            .startAngle(3/2 * .pi)
            .endAngle(2 * .pi)
            .radius(70)
        let menu2 = FloatingButton(mainButtonView: mainButton1, buttons: buttonsImage)
            .circle()
            .delays(delayDelta: 0.1)
        
        return VStack {
            Spacer().layoutPriority(10)
            HStack {
                menu1.padding(20)
                Spacer().layoutPriority(10)
                menu2.padding(20)
                Spacer().layoutPriority(10)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading:
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "arrow.left.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.leading, 10)
                }
        )
    }
}
