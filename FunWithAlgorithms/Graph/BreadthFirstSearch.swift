//
//  BreadthFirstSearch.swift
//  FunWithAlgorithms
//
//  Created by Аскар on 3/6/19.
//  Copyright © 2019 askar.ulubayev. All rights reserved.
//

import Foundation

func breadthFirstSearch(_ graph: Graph, source: Node) -> [String] {
    var queue = Queue<Node>()
    queue.enqueue(source)
    
    var nodesExplored = [source.label]
    source.visited = true
    
    while let current = queue.dequeue() {
        for edge in current.neighbors {
            let neighborNode = edge.neighbor
            if !neighborNode.visited {
                queue.enqueue(neighborNode)
                neighborNode.visited = true
                nodesExplored.append(neighborNode.label)
            }
        }
    }
    
    return nodesExplored
}
