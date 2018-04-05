//
//  Array+Extension.swift
//  MacApp
//
//  Created by Octree on 2018/4/5.
//  Copyright © 2018年 Octree. All rights reserved.
//

import Foundation

extension Array {
    
    func group(_ size: Int) -> [[Element]] {
        
        let rows = (count + size - 1) / size
        var groups = Array<[Element]>(repeating: [Element](), count: rows)
        
        for (index, elt) in enumerated() {
            
            let newIndex = index / size
            groups[newIndex].append(elt)
        }
        
        return groups
    }
}


extension NSPoint {
    
    func minus(_ other: NSPoint) -> NSPoint {
        
        return NSPoint(x: x - other.x, y: y - other.y)
    }
    
    func offset(_ p: NSPoint) -> NSPoint {
        
        return NSPoint(x: x + p.x, y: y + p.y)
    }
}


extension NSRect {
    
    func offset(_ p: NSPoint) -> NSRect {
        
        return NSRect(origin: origin.offset(p), size: size)
    }
}
