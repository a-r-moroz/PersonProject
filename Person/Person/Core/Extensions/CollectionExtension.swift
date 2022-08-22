//
//  CollectionExtension.swift
//  Person
//
//  Created by Andrew Moroz on 21.08.22.
//

extension Collection {

    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }

}
