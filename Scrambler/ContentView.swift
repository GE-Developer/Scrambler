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
            LinearGradient(
                gradient: Gradient(
                    colors: [Color("MainTopColor"), Color("MorseTintColor")]
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            TranslatorView(
                topFieldHeader: viewModel.topFieldHeader,
                topText: $viewModel.topText,
                topSymbolsCount: viewModel.topSymbolsCount,
                bottomFieldHeader: viewModel.bottomFieldHeader,
                bottomText: $viewModel.bottomText,
                bottomSymbolsCount: viewModel.bottomSymbolsCount,
                
                topDeleteIsDisabled: viewModel.topDeleteIsDisabled,
                topOpenIsDisabled: viewModel.topOpenIsDisabled,
                topCameraIsDisabled: viewModel.topCameraIsDisabled,
                topPasteIsDisabled: viewModel.topPasteIsDisabled,
                bottomReverseIsDisabled: viewModel.bottomReverseIsDisabled,
                bottomOpenIsDisabled: viewModel.bottomOpenIsDisabled,
                bottomCopyIsDisabled: viewModel.bottomCopyIsDisabled,
                
                topDeleteAction: viewModel.topDeleteAction,
                topOpenAction: viewModel.topOpenAction,
                topCameraAction: viewModel.topCameraAction,
                topPasteAction: viewModel.topPasteAction,
                bottomCopyAction: viewModel.bottomCopyAction,
                bottomOpenAction: viewModel.bottomOpenAction,
                bottomReverseAction: viewModel.bottomReverseAction,
                
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
