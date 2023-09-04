//
//  ContentView.swift
//  Scrambler
//
//  Created by M I C H A E L on 02.05.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = MorseViewModel()
    
    var body: some View {
        ZStack {
            BackgroundView(color: Color("MorseTintColor"))
            
            TranslatorView(
                viewModel: viewModel, 
                tintColor: Color("MorseTintColor")
            )
            .padding(.horizontal)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


