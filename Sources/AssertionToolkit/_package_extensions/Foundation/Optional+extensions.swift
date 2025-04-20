//
//  Optional+extensions.swift
//
//
//  Created by Jeremy Bannister on 6/14/24.
//

///
extension Optional {
    
    ///
    @discardableResult
    public func assertNil() throws -> Self {
        
        ///
        if let notNil = self {
            throw ErrorMessage("Not nil: \(notNil).")
        }
        
        ///
        return self
    }
    
    ///
    @discardableResult
    public func assertNotNil() throws -> Wrapped {
        
        ///
        if let wrapped = self {
            
            ///
            return wrapped
            
        ///
        } else {
            
            ///
            throw ErrorMessage("Optional<\(Wrapped.self)> was nil.")
        }
    }
}
