//
//  TranslatorView.swift
//  Scrambler
//
//  Created by M I C H A E L on 11.06.2023.
//

import SwiftUI

struct TranslatorView: View {
    
    var topFieldHeader: String
    @Binding var topText: String
    var topSymbolsCount: String
    
    var bottomFieldHeader: String
    @Binding var bottomText: String
    var bottomSymbolsCount: String

    let topDeleteIsDisabled: Bool
    var topOpenIsDisabled: Bool
    var topCameraIsDisabled: Bool
    var topPasteIsDisabled: Bool
    
    var bottomReverseIsDisabled: Bool
    var bottomOpenIsDisabled: Bool
    var bottomCopyIsDisabled: Bool
    
    
    
    
    let topDeleteAction: () -> Void
    let topOpenAction: () -> Void
    let topCameraAction: () -> Void
    let topPasteAction: () -> Void
    
    let bottomCopyAction: () -> Void
    let bottomOpenAction: () -> Void
    let bottomReverseAction: () -> Void
    
    let tintColor: Color
    
    var body: some View {
        VStack {
            CustomTextView(
                fieldHeader: topFieldHeader,
                text: $topText,
                symbolsCount: topSymbolsCount,
                buttons:
                    [
                        CustomButtonView(
                            imageName: ImageName.paste.rawValue,
                            imageNameFill: ImageName.pasteFill.rawValue,
                            tintColor: tintColor,
                            disabled: topPasteIsDisabled,
                            action: topPasteAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.camera.rawValue,
                            imageNameFill: ImageName.cameraFill.rawValue,
                            tintColor: tintColor,
                            disabled: topCameraIsDisabled,
                            action: topCameraAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.open.rawValue,
                            imageNameFill: ImageName.open.rawValue,
                            tintColor: tintColor,
                            disabled: topOpenIsDisabled,
                            action: topOpenAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.delete.rawValue,
                            imageNameFill: ImageName.deleteFill.rawValue,
                            tintColor: tintColor,
                            disabled: topDeleteIsDisabled,
                            action: topDeleteAction
                        )
                    ]
            )
            
            CustomTextView(
                fieldHeader: bottomFieldHeader,
                text: $bottomText,
                symbolsCount: bottomSymbolsCount,
                buttons:
                    [
                        CustomButtonView(
                            imageName: ImageName.copy.rawValue,
                            imageNameFill: ImageName.copyFill.rawValue,
                            tintColor: tintColor,
                            disabled: bottomCopyIsDisabled,
                            action: bottomCopyAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.open.rawValue,
                            imageNameFill: ImageName.open.rawValue,
                            tintColor: tintColor,
                            disabled: bottomOpenIsDisabled,
                            action: bottomOpenAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.reverse.rawValue,
                            imageNameFill: ImageName.reverse.rawValue,
                            tintColor: tintColor,
                            disabled: bottomReverseIsDisabled,
                            action: bottomReverseAction
                        )
                    ]
            )
            Spacer()
        }
    }
}

struct TranslatorView_Previews: PreviewProvider {
    static var previews: some View {
        TranslatorView(
            topFieldHeader: "English",
            topText: .constant("Text"),
            topSymbolsCount: "0 / 256",
            bottomFieldHeader: "Morse",
            bottomText: .constant("Text"),
            bottomSymbolsCount: "0",
            topDeleteIsDisabled: false,
            topOpenIsDisabled: false,
            topCameraIsDisabled: false,
            topPasteIsDisabled: false,
            bottomReverseIsDisabled: false,
            bottomOpenIsDisabled: false,
            bottomCopyIsDisabled: false,
            topDeleteAction: {},
            topOpenAction: {},
            topCameraAction: {},
            topPasteAction: {},
            bottomCopyAction: {},
            bottomOpenAction: {},
            bottomReverseAction: {},
            tintColor: Color("MorseTintColor")
        )
    }
}
