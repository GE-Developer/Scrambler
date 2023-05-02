//
//  CustomTextContentView.swift
//  Scrambler
//
//  Created by M I C H A E L on 01.05.2023.
//

import SwiftUI

struct CustomTextContentView: View {
    
    @State private var fullText: String = "This is some editable text"
    
    let heightView = 230
    let heightLabel = 30
    
    let buttons = [ButtonView(), ButtonView(), ButtonView()]

    var body: some View {
        ZStack {
//            Color.red
                
            ZStack() {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 4)
                VStack() {
                    Spacer()
                        .frame(height: 20)
                    
                    TextEditor(text: $fullText)
                        .scrollContentBackground(.hidden)
                        .background(.clear)
                    
                    Divider()
                    HStack(spacing: 10) {
                        Text("0 / 255")
                            .foregroundColor(Color(uiColor: .opaqueSeparator))
                            .padding(.leading, 10)
                        Spacer()
                        ForEach(buttons, id: \.self) { button in
                            button
                        }
                    }
                    .frame(height: 40)
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
                Text("English")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
            .frame(width: 150 ,height: CGFloat(heightLabel))
            .offset(y: -CGFloat(heightView) / 2)
        }
        .frame(height: CGFloat(heightView) + CGFloat(heightLabel))
    }
}

struct ButtonView: View, Hashable {
    
    var id = UUID()
    
    var body: some View {
        Button("Button") { }
            .frame(height: 40)
            .background(.cyan)
            .foregroundColor(.black)
    }
}

struct CustomTextContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextContentView()
    }
}
