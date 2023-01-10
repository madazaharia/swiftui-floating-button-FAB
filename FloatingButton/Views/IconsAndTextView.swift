//
//  IconsAndTextView.swift
//  FloatingButton
//
//  Created by Madalin Zaharia on 10.01.2023.
//

import SwiftUI

struct IconsAndTextView: View {
    
    @State var isOpen = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    menu1
                    
                    Spacer()
                        .layoutPriority(10)
                    
                    menu2
                    
                }
            }
            .navigationBarItems(
                trailing:
                    NavigationLink(destination: ScreenStraight()) {
                        Image(systemName: "arrow.right.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.trailing, 10)
                    }
                    .isDetailLink(false)
            )
        }
    }
    
    private var menu1: some View {
        let mainButton1 = MainButton(imageName: "star.fill", colorHex: "f7b731", width: 60)
        
        let textButtons = MockData.iconAndTextTitles.enumerated().map { index, value in
            IconAndTextButton(imageName: MockData.iconAndTextImageNames[index], buttonText: value)
                .onTapGesture { isOpen.toggle() }
        }
        
        let menu1 = FloatingButton(mainButtonView: mainButton1, buttons: textButtons, isOpen: $isOpen)
            .straight()
            .direction(.top)
            .alignment(.left)
            .spacing(10)
            .initialOffset(x: -1000)
            .animation(.spring())
        
        return menu1
            .padding(20)
    }
    
    private var menu2: some View {
        let mainButton2 = MainButton(imageName: "heart.fill", colorHex: "eb3b5a", width: 60)
        
        let textButtons = MockData.iconAndTextTitles.enumerated().map { index, value in
            IconAndTextButton(imageName: MockData.iconAndTextImageNames[index], buttonText: value)
                .onTapGesture { isOpen.toggle() }
        }
        
        let menu2 = FloatingButton(mainButtonView: mainButton2, buttons: textButtons)
            .straight()
            .direction(.top)
            .alignment(.right)
            .spacing(10)
            .initialOpacity(0)
        
        return menu2
            .padding(20)
    }
}
