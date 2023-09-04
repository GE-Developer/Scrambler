//
//  BackgroundView.swift
//  Scrambler
//
//  Created by M I C H A E L on 16.06.2023.
//

import SwiftUI

struct BackgroundView: View {
    let color: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [Color("MainTopColor"), color]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(color: .cyan)
    }
}
