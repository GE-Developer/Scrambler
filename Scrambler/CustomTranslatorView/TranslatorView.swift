//
//  TranslatorView.swift
//  Scrambler
//
//  Created by M I C H A E L on 11.06.2023.
//

import SwiftUI

struct TranslatorView: View {
    
    @ObservedObject var viewModel: MorseViewModel
    
    let tintColor: Color
    
    var body: some View {
        VStack {
            CustomTextView(
                fieldHeader: viewModel.topFieldHeader,
                text: $viewModel.topText,
                symbolsCount: viewModel.topSymbolsCount,
                buttons:
                    [
                        CustomButtonView(
                            imageName: ImageName.paste.rawValue,
                            imageNameFill: ImageName.pasteFill.rawValue,
                            tintColor: tintColor,
                            disabled: viewModel.topPasteIsDisabled,
                            action: viewModel.topPasteAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.camera.rawValue,
                            imageNameFill: ImageName.cameraFill.rawValue,
                            tintColor: tintColor,
                            disabled: viewModel.topCameraIsDisabled,
                            action: viewModel.topCameraAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.open.rawValue,
                            imageNameFill: ImageName.open.rawValue,
                            tintColor: tintColor,
                            disabled: viewModel.topOpenIsDisabled,
                            action: viewModel.topOpenAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.delete.rawValue,
                            imageNameFill: ImageName.deleteFill.rawValue,
                            tintColor: tintColor,
                            disabled: viewModel.topDeleteIsDisabled,
                            action: viewModel.topDeleteAction
                        )
                    ]
            )
            
            CustomTextView(
                fieldHeader: viewModel.bottomFieldHeader,
                text: $viewModel.bottomText,
                symbolsCount: viewModel.bottomSymbolsCount,
                buttons:
                    [
                        CustomButtonView(
                            imageName: ImageName.copy.rawValue,
                            imageNameFill: ImageName.copyFill.rawValue,
                            tintColor: tintColor,
                            disabled: viewModel.bottomCopyIsDisabled,
                            action: viewModel.bottomCopyAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.open.rawValue,
                            imageNameFill: ImageName.open.rawValue,
                            tintColor: tintColor,
                            disabled: viewModel.bottomOpenIsDisabled,
                            action: viewModel.bottomOpenAction
                        ),
                        CustomButtonView(
                            imageName: ImageName.reverse.rawValue,
                            imageNameFill: ImageName.reverse.rawValue,
                            tintColor: tintColor,
                            disabled: viewModel.bottomReverseIsDisabled,
                            action: viewModel.bottomReverseAction
                        )
                    ]
            )
            Spacer()
        }
    }
}

struct TranslatorView_Previews: PreviewProvider {
    static var previews: some View {
        TranslatorView(viewModel: MorseViewModel(), tintColor: .gray)
    }
}
