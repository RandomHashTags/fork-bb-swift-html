//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func body(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "body", children: children)
    }
}

public struct Body: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .body(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
