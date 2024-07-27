//
//  Collection+extensions.swift
//
//
//  Created by Jeremy Bannister on 6/14/24.
//

///
extension Collection where Element: Equatable {
    
    ///
    @discardableResult
    public func assertContains(
        _ element: Element
    ) throws -> Self {
        
        ///
        if !self.contains(element) {
            throw ErrorMessage("Collection does not contain \(element).")
        }
        
        ///
        return self
    }
}
