//
//  CustomTextView.swift
//  Scrambler
//
//  Created by M I C H A E L on 01.05.2023.
//

import SwiftUI

struct CustomTextView: View {
    
    let fieldHeader: String
    @Binding var text: String
    let symbolsCount: String
    
    let heightView = 230
    let heightLabel = 30
    
    
    
    let buttons: [CustomButtonView]
    
    var body: some View {
        ZStack {
//            Color.red
                
            ZStack() {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 4)
                VStack() {
                    Spacer()
                        .frame(height: 20)
                    
                    TextEditor(text: $text)
                        .scrollContentBackground(.hidden)
                        .background(.clear)
                    
                    Divider()
                    HStack(spacing: 16) {
                        Text(symbolsCount)
                            .foregroundColor(Color(uiColor: .opaqueSeparator))
                            .padding(.leading, 5)
                        Spacer()
                        ForEach(buttons, id: \.id) { button in
                            button
                                
                        }
                        
                            
                    }
                    .frame(height: 25)
                    
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 10)
            }
            .background(.white)
            .cornerRadius(15)
            .frame(height: CGFloat(heightView))
            
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 4)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .opaqueSeparator))
                Text(fieldHeader)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
            .frame(width: 150 ,height: CGFloat(heightLabel))
            .offset(y: -CGFloat(heightView) / 2)
        }
        .frame(height: CGFloat(heightView) + CGFloat(heightLabel))
    }
}


struct CustomButtonView: View {    
    let id = UUID()
    
    @State private var isPressed = false
    
    let imageName: String
    let imageNameFill: String
    
    let tintColor: Color
    let disabled: Bool
                            
    let action: () -> Void
    
    
    var body: some View {
        Button(action: action) {
            Image(systemName: isPressed ? imageNameFill : imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(tintColor)
        }
        .disabled(disabled)
        .buttonStyle(PlainButtonStyle())
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { _ in
                    isPressed = disabled ? false : true
                }
                .onEnded { _ in
                    isPressed = false
                }
        )
    }
}





struct CustomTextView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextView(
            fieldHeader: "English",
            text: .constant("Text"),
            symbolsCount: "0 / 255",
            buttons: []
        )
    }
}
