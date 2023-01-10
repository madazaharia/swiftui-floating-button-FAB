# swiftui-floating-button-FAB

Easily customizable floating button menu created with SwiftUI


Usage
1. Create main button view and a number of submenu buttons — both should be cast to AnyView type.

2. Pass both to FloatingButton constructor:

FloatingButton(mainButtonView: mainButton, buttons: buttons)

3. You may also pass a binding which will determine if the menu is currently open. You may use this to close the menu on any submenu button tap for example.

FloatingButton(mainButtonView: mainButton, buttons: buttons, isOpen: $isOpen)

4. Chain .straight() or .circle() to specify desired menu type.

5. Chain whatever you like afterwards. For example:
FloatingButton(mainButtonView: mainButton, buttons: textButtons)
    .straight()
    .direction(.top)
    .alignment(.left)
    .spacing(10)
    .initialOffset(x: -1000)
    .animation(.spring())

FloatingButton(mainButtonView: mainButton2, buttons: buttonsImage.dropLast())
    .circle()
    .startAngle(3/2 * .pi)
    .endAngle(2 * .pi)
    .radius(70)
    
    
Universal options:

  spacing - space between submenu buttons
  initialScaling - size multiplyer for submenu buttons when the menu is closed
  initialOffset - offset for submenu buttons when the menu is closed
  initialOpacity - opacity for submenu buttons when the menu is closed
  animation - custom SwiftUI animation like Animation.easeInOut() or Animation.spring()
  delays - delay for each submenu button's animation start

  Straight menu only options

  direction - position of submenu buttons relative to main menu button
  alignment - alignment of submenu buttons relative to main menu button

  Circle only options

  startAngle
  endAngle
  radius
