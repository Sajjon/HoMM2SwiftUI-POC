//
//  SpriteView.swift
//  HoMM2SwiftUI
//
//  Created by Alexander Cyon on 2021-08-09.
//

import Foundation
import SwiftUI
import SuccessionsKrigen

struct IconView: View {
    
    private let image: CGImage
    private let scale: CGFloat
    private let orientation: Image.Orientation
    
    init(image: CGImage, scale: CGFloat = Self.defaultScale, orientation: Image.Orientation = Self.defaultOrientation) {
        self.image = image
        self.scale = scale
        self.orientation = orientation
    }
}

// MARK: View
extension IconView {
    var body: some View {
        Image(decorative: image, scale: scale, orientation: orientation)
    }
}

// MARK: From Icon/Sprite
extension IconView {
    
    static let defaultScale: CGFloat = 1
    static let defaultOrientation: Image.Orientation = .up
    
    
    init(
        icon: Icon,
        scale: CGFloat = Self.defaultScale,
        orientation: Image.Orientation = Self.defaultOrientation,
        imageLoader: ImageLoader = .init(),
        sprite selectSprite: ImageLoader.SelectSprite = ImageLoader.selectFirstSprite
    ) {
        self.init(image: imageLoader.imageFromIcon(icon, sprite: selectSprite), scale: scale, orientation: orientation)
    }
    
    
}
