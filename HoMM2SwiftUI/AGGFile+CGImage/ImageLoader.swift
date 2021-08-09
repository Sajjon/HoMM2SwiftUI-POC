//
//  ImageLoader.swift
//  HoMM2SwiftUI
//
//  Created by Alexander Cyon on 2021-08-09.
//

import Foundation
import SuccessionsKrigen

public final class ImageLoader {
    private var spriteToImageMap: [Sprite: CGImage]
    private let aggFile: AGGFile
    private let palette32Bit: [UInt32]
    public init(
        spriteToImageMap: [Sprite: CGImage] = [:],
        aggFile maybeAggFile: AGGFile? = nil
    ) {
        var aggFile = try! maybeAggFile ?? .init()
        self.palette32Bit = aggFile.palette32Bit
        self.aggFile = aggFile
        self.spriteToImageMap = spriteToImageMap
    }
}

public extension ImageLoader {
    
    func imageFromSprite(
        _ sprite: Sprite
    ) -> CGImage {
        
        if let image = spriteToImageMap[sprite] {
            return image
        }
        
        let compressedPixelBytes = sprite.data()

        let pixels: [UInt32] = compressedPixelBytes.map {
            palette32Bit[Int($0)]
        }
        
        let pixelMatrix = pixels.chunked(into: sprite.size.width)
        return makeCGImage(pixelValueMatrix: pixelMatrix)
    }
    
    typealias SelectSprite = (Array<Sprite>) -> Sprite
    static let selectFirstSprite: SelectSprite = { $0.first! }
    
    func imageFromIcon(
        _ icon: Icon,
        sprite selectSprite: SelectSprite = ImageLoader.selectFirstSprite
    ) -> CGImage {
        
        let sprites = aggFile.spritesForCreature(icon)
        let sprite = selectSprite(sprites)
      
        return imageFromSprite(sprite)
    }
}


private func makeCGImage(pixelValueMatrix: [[UInt32]]) -> CGImage {
  
    guard let ctx = CGContext.from(pixels: pixelValueMatrix) else { fatalError("no context") }
    guard let cgImage = ctx.makeImage() else { fatalError("no image") }
    return cgImage
}


private extension Array {
    func chunked(into size: Int, assertSameLength: Bool = true) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            let array = Array(self[$0 ..< Swift.min($0 + size, count)])
            if assertSameLength {
                assert(array.count == size)
            }
            return array
        }
    }
}
