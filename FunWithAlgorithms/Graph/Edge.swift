//
//  Edge.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/6/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

open class Edge: Equatable {
    open var neighbor: Node
    
    public init(neighbor: Node) {
        self.neighbor = neighbor
    }
}

public func == (lhs: Edge, rhs: Edge) -> Bool {
    return lhs.neighbor == rhs.neighbor
}
