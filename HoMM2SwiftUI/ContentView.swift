//
//  ContentView.swift
//  HoMM2SwiftUI
//
//  Created by Alexander Cyon on 2021-08-02.
//

import Foundation
import QuartzCore
import SwiftUI
import SuccessionsKrigen

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
func makeCGImage(pixelValueMatrix: [[UInt32]]) -> CGImage {
  
    guard let ctx = CGContext.from(pixels: pixelValueMatrix) else { fatalError("no context") }
    guard let cgImage = ctx.makeImage() else { fatalError("no image") }
    return cgImage
}


func makePhoenixCGImage() -> CGImage {
    
    
    let aggFile = try! AGGFile()
    let sprites = aggFile.spritesForCreature(.PHOENIX)
    let sprite = sprites[0]
    let compressedPixelBytes = sprite.data()
    let palette = aggFile.dataForPalette()

    let palette32Bit: [UInt32] = (0..<256).map { i in
        var offset = 0
        func getValue() -> UInt8 {
            defer { offset += 1 }
            return palette[i * 3 + offset]
        }
        let red = getValue()
        let green = getValue()
        let blue = getValue()
        var data = Data()
        data.append(red)
        data.append(green)
        data.append(blue)
        data.append(255) // alpha
        data.reverse() // fix endianess
        return data.withUnsafeBytes { $0.load(as: UInt32.self) }
    }


    let pixels: [UInt32] = compressedPixelBytes.map {
        palette32Bit[Int($0)]
    }
    let pixelMatrix = pixels.chunked(into: sprite.size.width)
    return makeCGImage(pixelValueMatrix: pixelMatrix)
}



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
