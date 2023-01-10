//
//  ScreenStraight.swift
//  FloatingButton
//
//  Created by Madalin Zaharia on 10.01.2023.
//

import SwiftUI

struct ScreenStraight: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        let mainButton1 = MainButton(imageName: "thermometer", colorHex: "f7b731")
        let mainButton2 = MainButton(imageName: "cloud.fill", colorHex: "eb3b5a")
        let buttonsImage = MockData.iconImageNames.enumerated().map { index, value in
            IconButton(imageName: value, color: MockData.colors[index])
        }
        
        let menu1 = FloatingButton(mainButtonView: mainButton1, buttons: buttonsImage)
            .straight()
            .direction(.right)
            .delays(delayDelta: 0.1)
        
        let menu2 = FloatingButton(mainButtonView: mainButton2, buttons: buttonsImage)
            .straight()
            .direction(.top)
            .delays(delayDelta: 0.1)
        
        return VStack {
            Spacer().layoutPriority(10)
            HStack {
                menu1.padding(20)
                Spacer().layoutPriority(10)
                menu2.padding(20)
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
                },
            trailing:
                NavigationLink(destination: ScreenCircle()) {
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 10)
                }
                .isDetailLink(false)
        )
    }
}
