//
//  ContentView.swift
//  HoMM2SwiftUI
//
//  Created by Alexander Cyon on 2021-08-02.
//

import Foundation
import SwiftUI
import SuccessionsKrigen



struct MapView: View {
    let map: Map
    
    init(map: Map) {
        self.map = map
    }
    
    init(named mapName: Map.Named) {
        let mapLoader = MapLoader()
        let map = try! mapLoader.loadMap(named: mapName)
        self.init(map: map)
    }
}

extension Map.Tile: Identifiable {
    public typealias ID = Point
    public var id: ID { self.worldPosition }
}

extension MapView {
    
    var tileRows: [[Map.Tile]] {
        map.tiles.chunked(into: map.metaData.size.rawValue)
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(tileRows, id: \.self) { (rows: [Map.Tile]) in
                HStack(spacing: 0) {
                    if rows.first?.worldPosition.x == 0 {
                        Text("Row=\(rows.first!.worldPosition.y)").fixedSize()
                    }
                    ForEach(rows, id: \.self) { (tile: Map.Tile) in
                        let qor = tile.index.quotientAndRemainder(dividingBy: map.metaData.size.rawValue)
                        MapTileView(
                            tile: tile,
                            rowIndex: qor.quotient,
                            isLastTileInRow: qor.remainder == map.metaData.size.rawValue - 1
                        )
                    }
                }
            }
        }
    }
}

struct MapTileView: View {
    let tile: Map.Tile
    let rowIndex: Int
    let isLastTileInRow: Bool
    
    var body: some View {
        Text("\(tile.worldPosition.x)\(isLastTileInRow ? "#" : ".")")
            .fixedSize()
            .padding()
    }
}

struct ContentView: View {
    
    var body: some View {
//        IconView(icon: .phoenix)
        MapView(named: .pandemonium)//.frame(width: 640*2, height: 480*2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
