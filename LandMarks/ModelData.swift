//
//  ModelData.swift
//  LandMarks
//
//  Created by Xinghang Xu on 12/17/20.
//

import Foundation

// Create an array of landmarks from json file.
var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Can't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Can't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Can't parse \(filename) as \(T.self):\n\(error)")
    }
    
}
