//
//  ContentView.swift
//  HoMM2SwiftUI
//
//  Created by Alexander Cyon on 2021-08-02.
//

import SwiftUI

/*
 
 extension Color {
     static func absolute(red: UInt8, green: UInt8, blue: UInt8) -> Self {
         .init(red: .init(red) / 255, green: .init(green) / 255, blue: .init(blue) / 255)
     }
 }
 
 let palette: [Color] = [
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 252, green: 252, blue: 252),
     .absolute(red: 240, green: 240, blue: 240),
     .absolute(red: 232, green: 232, blue: 232),
     .absolute(red: 220, green: 220, blue: 220),
     .absolute(red: 212, green: 212, blue: 212),
     .absolute(red: 200, green: 200, blue: 200),
     .absolute(red: 192, green: 192, blue: 192),
     .absolute(red: 180, green: 180, blue: 180),
     .absolute(red: 172, green: 172, blue: 172),
     .absolute(red: 164, green: 164, blue: 164),
     .absolute(red: 152, green: 152, blue: 152),
     .absolute(red: 144, green: 144, blue: 144),
     .absolute(red: 132, green: 132, blue: 132),
     .absolute(red: 124, green: 124, blue: 124),
     .absolute(red: 112, green: 112, blue: 112),
     .absolute(red: 104, green: 104, blue: 104),
     .absolute(red: 92, green: 92, blue: 92),
     .absolute(red: 84, green: 84, blue: 84),
     .absolute(red: 72, green: 72, blue: 72),
     .absolute(red: 64, green: 64, blue: 64),
     .absolute(red: 56, green: 56, blue: 56),
     .absolute(red: 44, green: 44, blue: 44),
     .absolute(red: 36, green: 36, blue: 36),
     .absolute(red: 24, green: 24, blue: 24),
     .absolute(red: 16, green: 16, blue: 16),
     .absolute(red: 4, green: 4, blue: 4),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 252, green: 236, blue: 220),
     .absolute(red: 240, green: 220, blue: 200),
     .absolute(red: 232, green: 208, blue: 184),
     .absolute(red: 224, green: 196, blue: 168),
     .absolute(red: 216, green: 184, blue: 152),
     .absolute(red: 208, green: 168, blue: 136),
     .absolute(red: 200, green: 160, blue: 120),
     .absolute(red: 192, green: 148, blue: 108),
     .absolute(red: 184, green: 136, blue: 96),
     .absolute(red: 172, green: 124, blue: 84),
     .absolute(red: 164, green: 112, blue: 72),
     .absolute(red: 156, green: 104, blue: 60),
     .absolute(red: 148, green: 96, blue: 52),
     .absolute(red: 140, green: 84, blue: 44),
     .absolute(red: 132, green: 76, blue: 32),
     .absolute(red: 124, green: 68, blue: 28),
     .absolute(red: 116, green: 60, blue: 20),
     .absolute(red: 104, green: 52, blue: 16),
     .absolute(red: 96, green: 48, blue: 12),
     .absolute(red: 88, green: 40, blue: 8),
     .absolute(red: 80, green: 36, blue: 4),
     .absolute(red: 72, green: 28, blue: 4),
     .absolute(red: 60, green: 24, blue: 0),
     .absolute(red: 52, green: 20, blue: 0),
     .absolute(red: 44, green: 16, blue: 0),
     .absolute(red: 36, green: 12, blue: 0),
     .absolute(red: 192, green: 204, blue: 252),
     .absolute(red: 172, green: 184, blue: 240),
     .absolute(red: 152, green: 168, blue: 232),
     .absolute(red: 136, green: 152, blue: 224),
     .absolute(red: 120, green: 136, blue: 216),
     .absolute(red: 104, green: 120, blue: 208),
     .absolute(red: 88, green: 104, blue: 196),
     .absolute(red: 76, green: 88, blue: 188),
     .absolute(red: 64, green: 76, blue: 180),
     .absolute(red: 52, green: 64, blue: 172),
     .absolute(red: 40, green: 52, blue: 164),
     .absolute(red: 32, green: 48, blue: 152),
     .absolute(red: 28, green: 40, blue: 144),
     .absolute(red: 20, green: 36, blue: 136),
     .absolute(red: 16, green: 32, blue: 128),
     .absolute(red: 12, green: 28, blue: 120),
     .absolute(red: 8, green: 24, blue: 112),
     .absolute(red: 4, green: 20, blue: 100),
     .absolute(red: 4, green: 20, blue: 92),
     .absolute(red: 0, green: 16, blue: 84),
     .absolute(red: 0, green: 12, blue: 76),
     .absolute(red: 0, green: 12, blue: 68),
     .absolute(red: 172, green: 224, blue: 156),
     .absolute(red: 156, green: 212, blue: 140),
     .absolute(red: 144, green: 204, blue: 128),
     .absolute(red: 128, green: 192, blue: 112),
     .absolute(red: 116, green: 184, blue: 100),
     .absolute(red: 104, green: 176, blue: 92),
     .absolute(red: 92, green: 164, blue: 80),
     .absolute(red: 80, green: 156, blue: 68),
     .absolute(red: 72, green: 144, blue: 60),
     .absolute(red: 60, green: 136, blue: 48),
     .absolute(red: 52, green: 124, blue: 40),
     .absolute(red: 44, green: 116, blue: 36),
     .absolute(red: 36, green: 108, blue: 28),
     .absolute(red: 32, green: 100, blue: 24),
     .absolute(red: 24, green: 92, blue: 20),
     .absolute(red: 20, green: 84, blue: 12),
     .absolute(red: 12, green: 76, blue: 8),
     .absolute(red: 8, green: 64, blue: 4),
     .absolute(red: 4, green: 56, blue: 4),
     .absolute(red: 4, green: 48, blue: 0),
     .absolute(red: 0, green: 40, blue: 0),
     .absolute(red: 0, green: 32, blue: 0),
     .absolute(red: 0, green: 24, blue: 0),
     .absolute(red: 252, green: 244, blue: 208),
     .absolute(red: 248, green: 232, blue: 172),
     .absolute(red: 244, green: 224, blue: 140),
     .absolute(red: 240, green: 220, blue: 108),
     .absolute(red: 236, green: 212, blue: 80),
     .absolute(red: 232, green: 204, blue: 52),
     .absolute(red: 228, green: 200, blue: 20),
     .absolute(red: 224, green: 196, blue: 0),
     .absolute(red: 216, green: 188, blue: 32),
     .absolute(red: 208, green: 176, blue: 28),
     .absolute(red: 200, green: 160, blue: 24),
     .absolute(red: 188, green: 152, blue: 24),
     .absolute(red: 180, green: 140, blue: 24),
     .absolute(red: 168, green: 124, blue: 20),
     .absolute(red: 156, green: 112, blue: 16),
     .absolute(red: 148, green: 100, blue: 12),
     .absolute(red: 136, green: 88, blue: 12),
     .absolute(red: 124, green: 76, blue: 8),
     .absolute(red: 116, green: 68, blue: 8),
     .absolute(red: 104, green: 60, blue: 0),
     .absolute(red: 96, green: 48, blue: 0),
     .absolute(red: 84, green: 40, blue: 0),
     .absolute(red: 76, green: 32, blue: 0),
     .absolute(red: 228, green: 204, blue: 248),
     .absolute(red: 216, green: 188, blue: 236),
     .absolute(red: 200, green: 168, blue: 228),
     .absolute(red: 192, green: 156, blue: 216),
     .absolute(red: 180, green: 140, blue: 208),
     .absolute(red: 168, green: 124, blue: 196),
     .absolute(red: 156, green: 112, blue: 188),
     .absolute(red: 144, green: 100, blue: 180),
     .absolute(red: 132, green: 88, blue: 168),
     .absolute(red: 120, green: 76, blue: 160),
     .absolute(red: 112, green: 68, blue: 148),
     .absolute(red: 100, green: 56, blue: 140),
     .absolute(red: 92, green: 48, blue: 128),
     .absolute(red: 80, green: 40, blue: 120),
     .absolute(red: 72, green: 32, blue: 108),
     .absolute(red: 64, green: 24, blue: 100),
     .absolute(red: 56, green: 20, blue: 92),
     .absolute(red: 44, green: 8, blue: 80),
     .absolute(red: 32, green: 4, blue: 68),
     .absolute(red: 24, green: 0, blue: 56),
     .absolute(red: 16, green: 0, blue: 44),
     .absolute(red: 180, green: 244, blue: 252),
     .absolute(red: 168, green: 232, blue: 240),
     .absolute(red: 160, green: 224, blue: 232),
     .absolute(red: 148, green: 216, blue: 224),
     .absolute(red: 136, green: 204, blue: 212),
     .absolute(red: 128, green: 196, blue: 204),
     .absolute(red: 120, green: 184, blue: 196),
     .absolute(red: 112, green: 176, blue: 188),
     .absolute(red: 100, green: 168, blue: 176),
     .absolute(red: 92, green: 156, blue: 168),
     .absolute(red: 88, green: 148, blue: 160),
     .absolute(red: 80, green: 140, blue: 148),
     .absolute(red: 72, green: 128, blue: 140),
     .absolute(red: 64, green: 116, blue: 128),
     .absolute(red: 56, green: 104, blue: 116),
     .absolute(red: 48, green: 96, blue: 108),
     .absolute(red: 40, green: 84, blue: 96),
     .absolute(red: 32, green: 76, blue: 88),
     .absolute(red: 28, green: 64, blue: 76),
     .absolute(red: 20, green: 56, blue: 64),
     .absolute(red: 16, green: 44, blue: 56),
     .absolute(red: 12, green: 36, blue: 44),
     .absolute(red: 8, green: 28, blue: 36),
     .absolute(red: 252, green: 228, blue: 228),
     .absolute(red: 244, green: 208, blue: 208),
     .absolute(red: 240, green: 188, blue: 188),
     .absolute(red: 232, green: 172, blue: 172),
     .absolute(red: 228, green: 156, blue: 156),
     .absolute(red: 220, green: 140, blue: 140),
     .absolute(red: 216, green: 124, blue: 124),
     .absolute(red: 208, green: 108, blue: 108),
     .absolute(red: 204, green: 92, blue: 92),
     .absolute(red: 196, green: 80, blue: 80),
     .absolute(red: 192, green: 68, blue: 68),
     .absolute(red: 188, green: 56, blue: 56),
     .absolute(red: 184, green: 44, blue: 44),
     .absolute(red: 180, green: 36, blue: 36),
     .absolute(red: 168, green: 32, blue: 32),
     .absolute(red: 156, green: 24, blue: 24),
     .absolute(red: 144, green: 16, blue: 16),
     .absolute(red: 132, green: 12, blue: 12),
     .absolute(red: 120, green: 8, blue: 8),
     .absolute(red: 108, green: 4, blue: 4),
     .absolute(red: 96, green: 0, blue: 0),
     .absolute(red: 84, green: 0, blue: 0),
     .absolute(red: 72, green: 0, blue: 0),
     .absolute(red: 252, green: 228, blue: 156),
     .absolute(red: 248, green: 216, blue: 140),
     .absolute(red: 244, green: 208, blue: 124),
     .absolute(red: 240, green: 196, blue: 112),
     .absolute(red: 236, green: 184, blue: 96),
     .absolute(red: 232, green: 172, blue: 80),
     .absolute(red: 228, green: 160, blue: 68),
     .absolute(red: 224, green: 144, blue: 56),
     .absolute(red: 224, green: 132, blue: 44),
     .absolute(red: 204, green: 116, blue: 32),
     .absolute(red: 184, green: 100, blue: 24),
     .absolute(red: 164, green: 88, blue: 16),
     .absolute(red: 148, green: 72, blue: 8),
     .absolute(red: 128, green: 60, blue: 4),
     .absolute(red: 108, green: 48, blue: 0),
     .absolute(red: 92, green: 40, blue: 0),
     .absolute(red: 252, green: 88, blue: 12),
     .absolute(red: 220, green: 52, blue: 4),
     .absolute(red: 192, green: 20, blue: 0),
     .absolute(red: 164, green: 0, blue: 0),
     .absolute(red: 252, green: 252, blue: 0),
     .absolute(red: 252, green: 204, blue: 0),
     .absolute(red: 192, green: 140, blue: 0),
     .absolute(red: 140, green: 72, blue: 0),
     .absolute(red: 164, green: 208, blue: 0),
     .absolute(red: 148, green: 188, blue: 0),
     .absolute(red: 132, green: 172, blue: 0),
     .absolute(red: 120, green: 156, blue: 4),
     .absolute(red: 104, green: 140, blue: 4),
     .absolute(red: 92, green: 120, blue: 4),
     .absolute(red: 76, green: 104, blue: 4),
     .absolute(red: 64, green: 88, blue: 4),
     .absolute(red: 52, green: 72, blue: 4),
     .absolute(red: 40, green: 120, blue: 208),
     .absolute(red: 24, green: 104, blue: 196),
     .absolute(red: 4, green: 72, blue: 180),
     .absolute(red: 0, green: 56, blue: 172),
     .absolute(red: 12, green: 84, blue: 188),
     .absolute(red: 0, green: 56, blue: 172),
     .absolute(red: 0, green: 64, blue: 180),
     .absolute(red: 132, green: 224, blue: 252),
     .absolute(red: 0, green: 152, blue: 252),
     .absolute(red: 0, green: 80, blue: 228),
     .absolute(red: 0, green: 0, blue: 164),
     .absolute(red: 140, green: 140, blue: 188),
     .absolute(red: 112, green: 112, blue: 156),
     .absolute(red: 84, green: 84, blue: 124),
     .absolute(red: 60, green: 60, blue: 92),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
     .absolute(red: 0, green: 0, blue: 0),
 ] // end of palette

 
extension CGPoint: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.x)
        hasher.combine(self.y)
    }
}

struct Pixel: Equatable, Hashable, Identifiable {
    let point: CGPoint
    let color: Color
    
    typealias ID = CGPoint
    var id: ID { point }
}

struct Sprite: Equatable {
    
    struct PixelRows: Equatable, Hashable {
        struct PixelRow: Equatable, Hashable {
            let pixels: [Pixel]
        }
        let rows: [PixelRow]
        init(rows: [PixelRow], assertSameLength: Bool = true) {
            let lengthOfFirst = rows.first?.count ?? 0
            if assertSameLength {
                precondition(rows.allSatisfy { $0.count == lengthOfFirst })
            }
            self.rows = rows
        }
    }
    
    let rect: CGRect
    let pixelRows: PixelRows
}

extension Sprite {
    var size: CGSize { rect.size }
    var origin: CGPoint { rect.origin }
}


extension Sprite.PixelRows.PixelRow {
    var count: Int { pixels.count }
}

extension Sprite.PixelRows {
    init(pixelMatrix: [[Pixel]]) {
        self.init(rows: pixelMatrix.map(Sprite.PixelRows.PixelRow.init) )
    }
}

func makePhoenixSprite(drawnInRectOfSize canvasSize: CGSize? = nil) -> Sprite {
    
    let pixelMatrix = makePhoenixPixels(
        canvasWidth: phoenixSpriteWidth,
        canvasHeight: phoenixSpriteHeight
    ).chunked(into: phoenixSpriteWidth)
    
    
    return .init(
        rect: .init(
            x: phoenixSpriteOFfsetX,
            y: phoenixSpriteOFfsetX,
            width: phoenixSpriteWidth,
            height: phoenixSpriteHeight
        ),
        
        pixelRows: .init(pixelMatrix: pixelMatrix)
    )
}


func makePhoenixPixels(canvasWidth: Int, canvasHeight: Int) -> [Pixel] {
    
    assert(canvasWidth >= phoenixSpriteWidth)
    assert(canvasHeight >= phoenixSpriteHeight)

    let isFullFrame = phoenixSpriteWidth == canvasWidth
    
    let whiteColor: Color = .absolute(red: 255, green: 255, blue: 255)
    let pixelCount = Int(canvasWidth * canvasHeight)
    var pixels: [Color] = .init(repeating: whiteColor, count: pixelCount)
    
    let imageData = phoenixImageData
    
    var offset = 0
    if isFullFrame {
        while offset < imageData.count {
            defer {
                offset += 1
            }
            let paletteId = Int(imageData[offset])
            let colorValue = palette[paletteId]
            pixels[offset] = colorValue
        }
    } else {
        for y in 0..<phoenixSpriteHeight {
            for x in 0..<phoenixSpriteWidth {
                defer { offset += 1 }
                let paletteId = Int(imageData[offset])
                let colorValue = palette[paletteId]
                let index = y * ( Int(canvasWidth) ) + x
                pixels[index] = colorValue
            }
        }
    }
    return pixels.enumerated().map { index, color in
        let qor = index.quotientAndRemainder(dividingBy: canvasWidth)
        let x = qor.remainder
        let y = qor.quotient
        return Pixel(point: .init(x: x, y: y), color: color)
    }
}



struct PixelView: View {
    let pixel: Pixel
    
    var body: some View {
        Rectangle()
            .fill(
                pixel.color
            )
            .frame(width: 1, height: 1, alignment: .center)
    }
}

struct SpriteView: View {
    
    let sprite: Sprite
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(sprite.pixelRows.rows, id: \.self) { pixelRow in
                HStack(spacing: 0) {
                    ForEach(pixelRow.pixels) { pixel in
                        PixelView(pixel: pixel)
                    }
                }
            }
        }
    }
}
*/


private let phoenixSpriteWidth = 74
private let phoenixSpriteHeight = 96
private let phoenixSpriteOFfsetX = -14
private let phoenixSpriteOFfsetY = -95
// Phoneix Sprite at index 1,  size: Size(width: 74, height: 96), offset: Point(x: -14, y: -95)
private let phoenixSpriteHex = "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c5c5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c50000000000000000000000000000000000000000c500000000c5d9d9c50000000000000000000000000000000000000000000000000000000000000000000000c500000000000000c5c5000000000000000000c5000000000000000000c5c5000000c5d982d9c500000000000000000000000000c50000000000000000000000000000000000000000c5d9c500000000c5c5d9d9c50000000000000000c5c500000000000000c5d9c5000000c5d982d9d9c5000000000000000000000000c50000000000000000000000000000000000000000c582d9c30000c4d9d981d9c500000000000000c5c5c5000000000000c5d982d9c50000c5d98281d9d9c300000000000000000000c5d9c5000000000000000000000000000000000000c5d982d8c500c5d8d98182d9c500000000c3c4c5d9d9c5000000000000c5d982d9c50000c5d9828182d8d9c30000000000000000c5d980c500000000000000000000000000c4000000c5d8d982d8bfc5d8d8d981d9d9c5000000c3d9d98082d9c4000000000000c5d982d9d9c400c5d982808180d8d8c100000000000000c5d980d9c50000000000000000000000c4d9c20000c2d88282d8bebed8d88181d9c50000c3c2d9818282d9c400000000000000c5d98281d8d9c4c5d9d8807f7fd7d8d8c4c50000000000c5d980d9c500000000000000000000c5d981d8c4c4d9d88280d7bbd7d7d882d9d9c200c4c2d88082827fd9c400000000000000c5d9828182d8d9c3d9d8807e7d80d7d7d8d8c200000000c5d881d9c1c5000000000000000000c5d982d8c4d8d8818280d7bad7d78180d9d7bfc2d7d7d7818180d9c40000000000000000c5d982828181d8d9d9d8d77f7c7a7c7ed7d7d8c0000000c4d880d8d8c50000000000000000c3d98182d8c3d8d781817fd7d7d7d7807dd7d7bfd7d77f7f7f7dd9c400000000000000000000c5d98181807fd8d8d8d8d77e7c78777ad7d7d8c3c3c2c3d8807cd8d8c5000000000000c5d9d98282d7d7d8d7807f7ad7d7d77f7e7bd7d7d7d77d7f7f7b7dd9c400000000000000000000c5d98282807e7fd8d8d8d8d77d7a7577787bd7d7d8d8d8d87e7c7dd8c5000000c50000c5d8d881827fd7d7d7807c78d7d7d77f7c7cd7d7d77e7e7c7bd7d8c4000000000000000000000000c4d881817e7f7ed7d7d7d77d797a706f7479d6d7d7d7d8d77a7ad7d7c500c5d9c400c5d8d77f807dd7d7d7807a77d7d77c7f7b7cd7d7d77d7b7a78d7d8c4000000000000000000000000c4c0d8817f7c7d7b7dd7d7d67c7976746f737878d6d7d7d6797a79d7c3c5d97fd9c5d8d8d7817c7ad7d77f7e7772d7d77e7d7ad7d7d77d7a7a76d7d8c1000000000000000000000000c5d9bfbfd87f7e7b77787b7d7cd67c7c76756c737477d6d6d6d77b76d6d7c3817ed9d9d8d8d7807c77d7d77d7c7773d77d7a7978d7d67d7b797479d7d8c10000000000000000000000c5d981d9bfbdd8d77e7b767377777ad6d67a79766c6d7374d6d6d67a7373d6d6c27c79d8d8d7d7817a777ad77d797574d67d777776d6d67c777576d7d7c1000000000000000000000000c5d98280d9d8bbd7d77f786f7274757a7ad6d67a776c6c6f71d6d6d6776f71d6d6c27d7bd8d7d67e76757bd77b797174d67b757378d67a78747078d7d7c100000000c500000000000000c5d982817fd8d8d7d7d77f7b736c6d6f757778d6d6766e6c6d6d6fd67877706ed6d6c5c57bd7d67c756f79d67a777174d67a6f7577d67a756d7178d7d7c10000c2c2c500000000000000c5d9d9818280d8d8d8d7d77d77746e6c6c6f737375d6d671716c6e6dd9d9756ed9d9d9d9c2d7d67b756e77d67a766e72d6766d73d67978726c76d6d7d7c1c2c2d9d9c50000000000000000c5d9d980807e7ed8d7d7d77d7b78746d6c6c6f707173d6d66f6c6cd9d3d970d9d3d2d9d8c3d67b766f75d679746f71d6756c75d679736f6c79d6d7d7d8d8d97fd9c5000000000000000000c5d9d87f7e7e7d7dd7d7d7d77c7c79736e6c6c6d6e716cd66f6dd9d3d1d9d9d3d0cfd9d8c27b756e72d67a736cd678726c76d678726d6e78d6d7d7d77f7fd9c50000000000000000000000c5d8d8807c7b797a797cd7d7d67b7a7772706c6c6c6c6cd670d9d2d1d0d8d1cecbcbd8d7c475707277d6726cd6786d6ed67875716c75d6d6d7d77f7dd7d9c5000000000000000000000000c2d8d8807f7b7a767778777ad6d6d6d677756f6c6c6cd9d9d9d3ceccd0d8cfccc8c9d8bec3737277d6716dd6766c70d677736d6c79d6d6d6d67dd7d8c50000000000000000000000000000c3d8d8d77f7b766f6f6f7277777879d6d6d66f6f6fd9d5d2d8d0cbc9cfd7cdcac7c9d6c1c57475d66c6ed6736c71d6746e6c74d6d6d6d67d7bd7d8c50000000000000000000000c5c5c5c3bfbbd7d77e7b786c6c6c6c707274767776d6d673d9d5ced2d8d1cdc7cdd7cac9cbcbd6d7c578d66d6dd6726c70d672706c77d6d6d67c7ad7d7c20000000000000000000000c5d9d9d9d9d8bcbcd7d7d77d7a76746d6c6c6c7074747374d6d9d4cecdd0d7d7cec7c7d6d6c8cbd6d6d7c5d66e6dd6746ed6736d6c7276d6d67a7877d7d7c200000000000000000000c5d9818280d9d8d8d8d7d6d6d7d77c7a7875716d6c6c6c6d6e6ed9d9d0cdcac9cfd7cfc9c8cdd6d6c5c5d6d9c56f6ed6736fd6746c7278d67a7a7873d6d7c2000000000000000000000000c5d9d9808080d8d7d7d7d6d6d6d6d6d67b797676706e6c6e6cd9d4d8d0ccc9c6cdd6d6cac6c7d6c5c2c4d9d9c471d6726fd6747073d9d977777372d6d7c200000000000000000000000000c5d9d880807f7d7b7bd7d7d7d6d6d6d6d6d6d67873746e6dd9d4d0d8cecccac9c6cad6d6d6d6c5c3c1c3d9d8c5d6736fd673d9d9d2d9767470d6d6c1000000000000000000000000000000c5d8d87f7d7b797777787678787878767473d6d6d6d671d9d3d1cbd7d7cccbcbc7c6d6c5c5d9c3c0bfc0d8d8c4726ed8d9d3d1d9766f72d6d6c10000000000000000000000000000000000c2d8d8807e7b7774706d6c6c6c6c6d716e6f70706fd9d3d9d0cec9cbd7d6d6c7cbd6c5c3bfd8c5bcbec1d7d7c4d8d3d0cfd0d96e70d9d9d7c3000000000000000000000000000000000000c2d9d77f7f7f7c7b79767471716f6c6c6c6d6c6cd9d3d0d8d8d0cbc7c8c9d6d6d6c5c3bfbdc1c1bcc0c2d6d7c4cfcfccd9756fd9d3d9c50000000000000000000000000000000000c5c5c5c4c2d7d7d7d7d7d7d7d6d67977777474736f6dd9d3cdccd2d7d7cecac8cbd6c5d9c5bfbdbdc3bcbcc2d9d6c4cfcd9292d8d9d2d4d9c500000000000000000000000000000000c5d9d9d8d8d7d7d7d77a79797a78d6d6d6d6d6d6777875d9d8cfcecac9d0d6d6c9d6c5c5c2d8c5bfbcbcbdbcbfd9d9c3cecc92d89292d2d9d9c4000000000000000000000000000000c5d98282807f7d7e7c7a7373737174737372717171d6d6d9d3d3d8d8cecec9c6cbd6d6d9c3c0bdbfc2bdbebbbebfd8d9c3cdcdd092d87792d9c50000000000000000000000000000000000c5d9d982827e79797571706d6e6c6c6c6c6c6c6c6c6cd9d3d1cfd0d7d6cec9cad6c5c5d8c2bebabfbabebabdd7d8c5d092929292d7d8769292000000000000000000000000000000000000c5d9d982827f7e7e7f7c7a7978747372727071706c6dd9d3d1cecdcfd6d6d6c3c5c4c5c5c0bbbfbbbcbfbed7d8c5ce92d8787878d771717692000000000000000000000000000000000000c5d9d8d8d7d7d7d7d7d7d7d7d7d6d6d67271736e6ed9d8d8d7cecbcbcbd6d9c2c0bfc3c1bfbfbabdbdd6d7c3d8cecc92d7d67171d671767192920000000000000000000000000000000000c5c5c4c2d7d7d7d77c787778787776d6d6d6d6d9d9d3d1d0d7d6d6d6c5c4d8c0bebcbdbebebdbed9d6c4d2d792929278d7d67176716f746f71920000000000000000000000000000000000c5d9d9d87f7f7e7873726e6f72736e6f6f706fd9d1ceccc7c6c6d6d9c5c5c2c0bcbcbcbcbfd9d9c5d3d2d792d8d7d67171d6716d6c6c726f7692000000000000000000000000000000c5d9828282827d77746d6c6d6c6c6c6d6c6f706d6cd9d0ceccc9c9d6c5d8c4c2c1c0bfbebdd8d8c5d8d2cfd7ce9278d7d671706cb8b9b8bbb9b87192000000000000000000000000000000c5d9d98282827f7b7a7877767575757575737370d9d8d8d7d6ccd6c5c1c0bfbdbbbbbebdd7d8c1d1d8cfcdd692d87373706ed9d8d7949497b0b37192000000000000000000000000000000c5c5d8d882807e7d7ed7d7d7d6d6d6d6d6d6d9d3d1cfcacbd6d6d9c5c3bebbbabcbcd6d7c3d8d2d7d0cd92d8d7d6d66cd7d6b6d6bf762424b1b6719200000000000000000000000000000000c5c4d8d8d7d7d77e7b7875757472726fd9d3d1cfc9c7c7d6c5d8c5c5c0c1c0c0d9d6c5d7d0cdd6d6c59277746dd8c0bad6bcb670242497b8b4920000000000000000000000000000000000c2d98282807e7978726e6e6c6d6c6c6cd8d8d8d7cdcad6c4c3c2c2bfc0c0d9d9c5d2d7d1d0d6c3c2c092d66fd7d6b7d7bdb8b5b8b9c1977492000000000000000000000000000000000000c1d9d8817e7c7a7b787775716d6d6cd9d3cfced6d6d6d9c3c4bebdbcbdd8d8c5d2cfd6d6c3bec192d771d9d8b8d8b6d6b8b6b5b77b77c17297000000000000000000000000000000000000c1bcd8d7d7d7d7d7d7d6d6d6d6d6d9d3cfc9c6c6d6c4d8c1c2c1bfc0d8d7c5d1cecbd6c2bd92d6d871d6bdb7d6b7d8b9baba7e7b777472709700000000000000000000000000000000c5d9d8807e797a78777574727270c66dd8d7cbcbcbd6c5c5c5c4c0bcbcd7d7c1d7d0d6c3c092d8d771d7c2d9d8d7d8b6d7d6929797977472706d970000000000000000000000000000c5d982827e7d7b7673706e6d6c6c6f6d6cd8d2d7d6d6d6d9d8c5c1bcbbbcbfd6d6c3d6c5bdc092d96f71c4bbb6d6b9d6b8b492000000009797976d97000000000000000000000000000000c2d9d882807a7a7978767575737270c6d9d1cfcbc7c7d6c4c0bfc0bcc1c0d6d9c5d6c3bd92d7d66dc1d8bebbd7b6d7d7b79200000000000000979700000000000000000000000000000000c5c5d8d8d8d7d7d7d7d7d6d6d6d6d6d9d8d2d0ccccd6c4c4c1c2c4c0bbd9d8c5c3c392d9d871c2bfb8d9d8b4d6d8b49200000000000000000097000000000000000000000000000000000000c4d8d77f7e7e7b7875757370706d6cd9d7d7d6d6d9d8c5c5c0bcbbbdd8d7c4c292d66fbed8bed7d6b8b7d7d8b592000000000000000000000000000000000000000000000000000000c5d882807e7a77717371727170d6d6d6d9cfc7c6d6c5c5c2c1bdbec0c0d7d6c592d7736fc0bad8bbb5d9d6b4d992000000000000000000000000000000000000000000000000000000c5d98281817f807e7e7ad6d6d6d6716dc6d9d0ccc8c7d6c4c4c3c0c4c2babcd6d9c47375d7c0b8d9b9b5d8d7b7b59200000000000000000000000000000000000000000000000000000000c5d9d8d8d8d7d7d7d7787775726c6d6dd9d7d7d7d6d6d9d8c3c4c1bbbbbfd9d9c3c5c3c0d9bdd6d7d7b6d8b7b7920000000000000000000000000000000000000000000000000000000000c5c5d8d8d77b7b7871726f6d6fd6d672d9d0cfcacad6c5c5c2bebdbec1c2d8d8bebdbbd8d7bcb8d8b7d8d69200000000000000000000000000000000000000000000000000000000000000c3d9817e7b7776777874d6d672706fd9d2cfd7d6d6c5d8c2bfbdc0b9bad7d7bdbcd8bdd9bcd6d9bdd8b592000000000000000000000000000000000000000000000000000000000000c5d9807e807e8180d7d6d676756f6fd6d9d8d8cacacbd6c5c5c3c5bfbbb9c1d6d6bed6b8bbd7b7d9d6b5d99200000000000000000000000000000000000000000000000000000000000000c5d9d9817fd7d7797879737070d6706cd8cfcdcdcfd6c5d8c4c1bbbdc0c5d6d7d6bdbdd9d8bab6d7b992000000000000000000000000000000000000000000000000000000000000000000c4c3d8d77c7878777777d6d6716e6fd8d2d2d6d6c9d6c3c3c0c0c1c2d6d8bcd7bed6bbb6d7b7d8ba9200000000000000000000000000000000000000000000000000000000000000000000c5d97e7e7d7e7ed7d67574726fd6d9d8d8cecaccd6d6d8c2c5d6d6d6c3bebad8d7beb9d9d8b6d792000000000000000000000000000000000000000000000000000000000000000000c5d98080828081d77a76767474d6706ed9d1d2cfd6d6d6c3c3d6d8d8d7c0bed6d9bebed7d6beb5d99200000000000000000000000000000000000000000000000000000000000000000000c5d9d9d8d7d77b7a7776d6d6736f6cd9d3d8d8cccbccd6d9d6c1bad8d8d7bab8d7d8b7d7bfba92000000000000000000000000000000000000000000000000000000000000000000000000c5c4c1d87f8081d7d679746c6dd6d9d8d8d3d0cdd6d6c1d7c3bfd9d9c0beb7d8d9b6b9d6bd9200000000000000000000000000000000000000000000000000000000000000000000000000c5d980827fd7d77a747372d671706dd9d5d4d7d6c2bad8c2d6bad6c0d8d7d6c1bbd8d792000000000000000000000000000000000000000000000000000000000000000000000000000000c5d9d8d8d77d77787ad675726dd9d9d8d8d7c4c2bcbed7c4bbbcd9bfb9d7bcd9b7bd92000000000000000000000000000000000000000000000000000000000000000000000000c5c5c2c3c5c2d87d7c7d7fd778706dd6d6d9d6d8c5d6c2c0d6d9c4c5d7d6c2bed8d7d6ba9200000000000000000000000000000000000000000000000000000000c5c5c5c5c5c5c5c5c5d7d7d6d6c5d981807e7ed7777174d6d7c5d9d7c5c0d7d8d7c0d6d9d8c1d8d7d6bbd8c0bc92000000000000000000000000000000000000000000000000000000c5d9d9d9d8d8d8d7d7d778777170c5d980d9d8d8d77c767ad7d8c5bed8c5c0c0d9c4c1d7c4c0bcd9c2c0bad9bf92000000000000000000000000000000000000000000000000000000c5d9828180807f7a777875746e6c6e70c5d9d9c3d87d7b7dd7d9c5c0bed9c4c3d7d6c5c5d8c5c5bfd6d9d8d7d6920000000000000000000000000000000000000000000000000000000000c5d98282817e7b75706f6c70747676d6c2c2d9818080d7d6c5c2c2d8d6d9d8bed7d9d9c0d8c5d7b7d6c2c19200000000000000000000000000000000000000000000000000000000000000c5d9d8d8d8807e7b7a7977d6d6706c7192c4d9d9d9d8d7d7c3d9bad7c5bfc5d8c5c2bdd9d8c0bad7c592000000000000000000000000000000000000000000000000000000000000000000c5d8d8d7d7d7d7d6d6d6736e70707692c4d8d7c5bfbfbed6c2bb92c5c5d6d9c5c5d7d6c5c0bc9292000000000000000000000000000000000000000000000000000000000000000000c5c5c5d7d6d6d6d6d678746d6d727592c5d6c5c3d6c3bfd8d7c2c192d8d7c5d9d8d7c3d8c5c59200000000000000000000000000000000000000000000000000000000000000c5c5c5c5d8d8d7d7d7d7797978716c727777d692d8d7c5d7bed7d6c0c0d692c5c5c2c5d6c5c1bdd99292000000000000000000000000000000000000000000000000000000000000c5c5d8d8d8d8d8d7d77a79786f6e707477d6d6d692c5c1c0d9d8c1bcd7c1bad892d6d9d8d7c5c4c5929200000000000000000000000000000000000000000000000000000000000000c5d9d9d9d9d8d8d77c7c706d70717077d6d6736e7192c5c1d6bfc0d6d9d8c4c097c5c2c2c2d89292920000000000000000000000000000000000000000000000000000000000000000c5d9828282807f7d7a777672777578d6d6747072717392d8d7c5c3d8d7c4c2d997c5c4c2929292c097000000000000000000000000000000000000000000000000000000000000000000c5d9d9d981807f7e7e7c7d7c7b7bd67677726e7174d692c5c5d6d9c5c3d7979792929292d8d6c1bd9700000000000000000000000000000000000000000000000000000000000000000000c5d9d8d8d8d8d8d7d7d7d6d6d679736d6d75d6d67092c5d7c5c2d6c1977a76d692c5d9c2c5d8c0970000000000000000000000000000000000000000000000000000000000000000000000c5d9d8d8d7d7d7d7d7797a786c6d7477d6d672737297c5cbcdd297797674d697d6c0d8d2cc970000000000000000000000000000000000000000000000000000000000000000000000c5d9d9d8d8d8d8d77e7c766f71787a7ad67574727376d697d2d2cb977475d6d697c1c0cacdd29797000000000000000000000000000000000000000000000000000000000000000000c5d98282828181807b7c79787c7b7ad6d67874717779d67a97cdcbcdd29778d7d7c59797cdd2cacdd297000000000000000000000000000000000000000000000000000000000000000000c5d9d981828081807e7e7e7bd6d678736c70777ad679717297d2d2c997d7d7d7c400009797cdd2cbd297970000000000000000000000000000000000000000000000000000000000000000c5d9d8d8d8d7d7d7d7d6d679776c6c717ad6d6d6776f757b97cbcdd297d8c400000000009797d2cdcad2979797979797970000000000000000000000000000000000000000000000000000c3c1d8d8d8d7d7d7d779726d727a7ad6d6d679727779d7d797d2ca97d8c3000000000000009797d2cdd1cbd1cdd1cdc8970000000000000000000000000000000000000000000000000000c5c2d8d8d7d7d77d6d6c757ad7d7d6d77a72777ed7d7d797cbcdd297979797979797000000009797cdd3cbd3cd97cdc8970000000000000000000000000000000000000000000000c5c5c5d8d8d8d8d77e77797c7cd7d7d7d7d7777b7ed7d7c4d7d897d2cdd1cbd1cdd1cdc89700000097c897979797cdc897979797000000000000000000000000000000000000000000c5d9d9d9d9d8817f807a7d7dd8d7d7c3d9d87e7c7fd7d8c400c5d9d997d2cdd3cbd3cd97cec89700009797000000009797c89700970000000000000000000000000000000000000000c5d9828182828180807d7fd8d8d8c3c5c5d9d87f7fd8d8c4000000c597cdcd97979797cdc89797979700970000000000000097970000000000000000000000000000000000000000000000c5d9d9d98182818181d8d8c4c50000c5d98081d9d9c40000000097c89797000000009797c89700970000000000000000000097000000000000000000000000000000000000000000000000c5d9d9d9d9d9d9d9c5c5000000c5d9d9d9d9d9c500000000009797000000000000000097970000000000000000000000000000000000000000000000000000000000000000000000000000c5c5c5c5c5c5c400000000c5c5c5c5c5c5c500000000000097000000000000000000009700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"


extension Data {
    init?(hex: String) {
        guard hex.count.isMultiple(of: 2) else {
            return nil
        }
        
        let chars = hex.map { $0 }
        let bytes: [UInt8] = stride(from: 0, to: chars.count, by: 2)
            .map { String(chars[$0]) + String(chars[$0 + 1]) }
            .compactMap { (hexString: String) -> UInt8? in return UInt8(hexString, radix: 16) }
        
        guard hex.count / bytes.count == 2 else { return nil }
        self.init(bytes)
    }
}

let phoenixImageData: Data = .init(hex: phoenixSpriteHex)!


extension Array {
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

let palette32Bit: [UInt32] = [255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 4244438271, 4042322175, 3907578111, 3705462015, 3570717951, 3368601855, 3233857791, 3031741695, 2896997631, 2762253567, 2560137471, 2425393407, 2223277311, 2088533247, 1886417151, 1751673087, 1549556991, 1414812927, 1212696831, 1077952767, 943208703, 741092607, 606348543, 404232447, 269488383, 67372287, 255, 4243381503, 4041001215, 3905992959, 3770984703, 3635976447, 3500706047, 3365959935, 3230952703, 3095945471, 2893829375, 2758822143, 2624077055, 2489332991, 2354326783, 2219581695, 2084838655, 1950094591, 1748242687, 1613761791, 1479018751, 1344537855, 1209795839, 1008206079, 873726207, 739246335, 604766463, 3234659583, 2897801471, 2561206527, 2291720447, 2022234367, 1752748287, 1483261183, 1280883967, 1078768895, 876653823, 674538751, 540055807, 472420607, 337938687, 270565631, 203192575, 135819519, 68445439, 68443391, 1070335, 806143, 804095, 2900401407, 2631175423, 2429321471, 2160095487, 1958241535, 1756388607, 1554272511, 1352418559, 1217412351, 1015558399, 880552191, 745809151, 611065087, 543430911, 408687871, 341052671, 206309631, 138413311, 70780159, 70254847, 2621695, 2097407, 1573119, 4243902719, 4175998207, 4108356863, 4040977663, 3973337343, 3905697023, 3838317823, 3770941695, 3636207871, 3501202687, 3365935359, 3164084479, 3029080319, 2826704127, 2624590079, 2489584895, 2287471871, 2085357823, 1950615807, 1748762879, 1613758719, 1411907839, 1277165823, 3838638335, 3636260095, 3366511871, 3231504639, 3029127423, 2826749183, 2624634111, 2422519039, 2220402943, 2018287871, 1883542783, 1681427711, 1546682623, 1344829695, 1210084607, 1075340543, 940858623, 738742527, 537150719, 402667775, 268446975, 3035954431, 2833838335, 2699094271, 2497241343, 2295125247, 2160381183, 2025374975, 1890630911, 1688776959, 1553770751, 1486135551, 1351390463, 1216384255, 1081377023, 946369791, 811625727, 676618495, 541874431, 473976063, 339230975, 271333631, 203697407, 136062207, 4242859263, 4107325695, 4038900991, 3903630591, 3835469055, 3700198655, 3632037119, 3496766719, 3428605183, 3293597951, 3225699583, 3157801215, 3089902847, 3022267647, 2820677887, 2618824959, 2416972031, 2215382271, 2013792511, 1812202751, 1610612991, 1409286399, 1207959807, 4242840831, 4174941439, 4107304191, 4039405823, 3971506431, 3903607039, 3835708671, 3767548159, 3766758655, 3430162687, 3093567743, 2757234943, 2487748863, 2151417087, 1815085311, 1546125567, 4233628927, 3694396671, 3222536447, 2751463679, 4244373759, 4241228031, 3230400767, 2353529087, 2765095167, 2495348991, 2225864959, 2023490815, 1754006783, 1551369471, 1281885439, 1079510271, 877135103, 679006463, 409519359, 71873791, 3714303, 206879999, 3714303, 4240639, 2229337343, 10026239, 5301503, 42239, 2358033663, 1886428415, 1414823167, 1010588927, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255]

func makeCGImage(pixelValueMatrix: [[UInt32]]) -> CGImage {
  
    guard let ctx = CGContext.from(pixels: pixelValueMatrix) else { fatalError("no context") }
    guard let cgImage = ctx.makeImage() else { fatalError("no image") }
    return cgImage
}

func makePhoenixCGImage() -> CGImage {
    let compressedPixelBytes = phoenixImageData
    let pixels = compressedPixelBytes.map {
        palette32Bit[Int($0)]
    }
    let pixelMatrix = pixels.chunked(into: phoenixSpriteWidth)
    return makeCGImage(pixelValueMatrix: pixelMatrix)
}

import QuartzCore

extension CGContext {
    private static let colorSpace = CGColorSpaceCreateDeviceRGB()

    private static let bitmapInfo =
        CGBitmapInfo.byteOrder32Little.rawValue |
        CGImageAlphaInfo.premultipliedLast.rawValue & CGBitmapInfo.alphaInfoMask.rawValue

    static func from(pixels pixelMatrix: [[UInt32]]) -> CGContext? {
        let width = pixelMatrix.first?.count ?? 0
        let height = pixelMatrix.count
        assert(pixelMatrix.allSatisfy { $0.count == width })
        let pixels: [UInt32] = pixelMatrix.flatMap { $0 }
        var mutPixels = pixels

        let bitsPerByte = UInt8.bitWidth
        let bytesPerPixel = UInt32.bitWidth / bitsPerByte
        let bytesPerRow = width * bytesPerPixel

        return CGContext(
            data: &mutPixels,
            width: width,
            height: height,
            bitsPerComponent: bitsPerByte,
            bytesPerRow: bytesPerRow,
            space: colorSpace,
            bitmapInfo: bitmapInfo,
            releaseCallback: nil,
            releaseInfo: nil
        )
    }
}

struct ContentView: View {
    
    let phoenixImage = makePhoenixCGImage()
    
    var body: some View {
        Image(decorative: phoenixImage, scale: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
