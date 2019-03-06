//
//  Digraph.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/6/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

open class Digraph: CustomStringConvertible, Equatable {
    open fileprivate(set) var nodes: [Node]
    
    public init() {
        self.nodes = []
    }
    
    open func addNode(_ label: String) -> Node {
        let node = Node(label: label)
        nodes.append(node)
        return node
    }
    
    open func addEdge(_ source: Node, neighbor: Node) {
        let neighborEdge = Edge(neighbor: neighbor)
        source.neighbors.append(neighborEdge)
    }
    
    open var description: String {
        var description = ""
        
        for node in nodes {
            if !node.neighbors.isEmpty {
                description += "[node: \(node.label) edges: \(node.neighbors.map { $0.neighbor.label})]"
            }
        }
        return description
    }
    
    open func findNodeWithLabel(_ label: String) -> Node {
        return nodes.filter { $0.label == label }.first!
    }
}

public func == (lhs: Digraph, rhs: Digraph) -> Bool {
    return lhs.nodes == rhs.nodes
}
