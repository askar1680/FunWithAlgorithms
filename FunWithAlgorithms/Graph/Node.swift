//
//  Node.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/6/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

open class Node: CustomStringConvertible, Equatable {
    open var neighbors: [Edge]
    
    open fileprivate(set) var label: String
    open var distance: Int?
    open var visited: Bool
    
    public init(label: String) {
        self.label = label
        neighbors = []
        visited = false
    }
    
    open var description: String {
        if let distance = distance {
            return "Node(label: \(label), distance: \(distance))"
        }
        return "Node(label: \(label), distance: infinity)"
    }
    
    open var hasDistance: Bool {
        return distance != nil
    }
    
    open func remove(_ edge: Edge) {
        neighbors.remove(at: neighbors.index { $0 === edge }!)
    }
}

public func == (lhs: Node, rhs: Node) -> Bool {
    return lhs.label == rhs.label && lhs.neighbors == rhs.neighbors
}
