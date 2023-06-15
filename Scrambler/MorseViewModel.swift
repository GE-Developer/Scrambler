//
//  MorseViewModel.swift
//  Scrambler
//
//  Created by M I C H A E L on 10.06.2023.
//

import Foundation

//protocol MorseViewModelProtocol {
//
//    var topFieldHeader: String { get }
//    var topText: String { get }
//    var topSymbolsCount: String { get }
//    var bottomFieldHeader: String { get }
//    var bottomText: String { get }
//    var bottomSymbolsCount: String { get }
//
//    var topDeleteIsDisabled: Bool { get }
//    var topOpenIsDisabled: Bool { get }
//    var topCameraIsDisabled: Bool { get }
//    var topPasteIsDisabled: Bool { get }
//    var bottomReverseIsDisabled: Bool { get }
//    var bottomOpenIsDisabled: Bool { get }
//    var bottomCopyIsDisabled: Bool { get }
//
//    func topDeleteAction()
//    func topOpenAction()
//    func topCameraAction()
//    func topPasteAction()
//
//    func bottomCopyAction()
//    func bottomOpenAction()
//    func bottomReverseAction()
//}


final class MorseViewModel: ObservableObject {
    var topFieldHeader = "English"
    
    @Published var topText = "Write here"
    
    var topSymbolsCount: String {
        "\(topText.count)"
    }
    
    var bottomFieldHeader = "Morse"
    @Published var bottomText = "Your text will be here"
    var bottomSymbolsCount: String {
        "\(bottomText.count)"
    }
    
    var topDeleteIsDisabled: Bool {
        topText.isEmpty
    }
    
    var topOpenIsDisabled = false
    var topCameraIsDisabled = false
    var topPasteIsDisabled = false
    var bottomReverseIsDisabled = false
    var bottomOpenIsDisabled = false
    var bottomCopyIsDisabled: Bool {
        bottomText.isEmpty
    }
    
    func topDeleteAction() {
        topText = ""
    }
    
    func topOpenAction() {
        print("topOpenAction")
    }
    
    func topCameraAction() {
        print("topCameraAction")
    }
    
    func topPasteAction() {
        print("topPasteAction")
    }
    
    func bottomCopyAction() {
        print("bottomCopyAction")
    }
    
    func bottomOpenAction() {
        print("bottomOpenAction")
    }
    
    func bottomReverseAction() {
        print("bottomReverseAction")
    }
    
  
}
