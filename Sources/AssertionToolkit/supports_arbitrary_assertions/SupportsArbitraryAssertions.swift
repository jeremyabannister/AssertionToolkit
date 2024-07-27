//
//  SupportsArbitraryAssertions.swift
//
//
//  Created by Jeremy Bannister on 6/14/24.
//

///
public protocol SupportsArbitraryAssertions { }

///
extension SupportsArbitraryAssertions {
    
    ///
    @discardableResult
    public func assert<
        Value: Equatable
    >(
        _ keyPath: KeyPath<Self, Value>,
        doesNotEqual value: Value
    ) throws -> Self {
        
        ///
        guard self[keyPath: keyPath] != value else {
            throw ErrorMessage("\(self[keyPath: keyPath]) is equal to \(value) but shouldn't be.")
        }
        
        ///
        return self
    }
    
    ///
    @discardableResult
    public func assert<
        Value: Equatable
    >(
        _ keyPath: KeyPath<Self, Value>,
        equals value: Value
    ) throws -> Self {
        
        ///
        if self[keyPath: keyPath] != value {
            throw ErrorMessage("\(self[keyPath: keyPath]) is not equal to \(value).")
        }
        
        ///
        return self
    }
}

///
extension SupportsArbitraryAssertions {
    
    ///
    @discardableResult
    public func assert<
        Value
    >(
        _ keyPath: KeyPath<Self, Value>,
        satisfies predicate: @escaping (Value)throws->Bool
    ) throws -> Self {
        
        ///
        try predicate(self[keyPath: keyPath])
            .assertTrue()
        
        ///
        guard try predicate(self[keyPath: keyPath]) else {
            throw ErrorMessage("\(self[keyPath: keyPath]) failed to satisfy the predicate.")
        }
        
        ///
        return self
    }
    
    ///
    @available(macOS 10.15.0, iOS 13.0, watchOS 6.0.0, tvOS 13.0.0, *)
    @discardableResult
    public func assert<
        Value
    >(
        _ keyPath: KeyPath<Self, Value>,
        satisfies predicate: @escaping (Value)async throws->Bool
    ) async throws -> Self {
        
        ///
        try await predicate(self[keyPath: keyPath])
            .assertTrue()
        
        ///
        guard try await predicate(self[keyPath: keyPath]) else {
            throw ErrorMessage("\(self[keyPath: keyPath]) failed to satisfy the predicate.")
        }
        
        ///
        return self
    }
}

///
extension SupportsArbitraryAssertions {
    
    ///
    @discardableResult
    public func assert(
        condition: @escaping (Self)throws->Bool
    ) throws -> Self {
        
        ///
        guard try condition(self) else {
            throw ErrorMessage("\(self) failed to satisfy condition.")
        }
        
        ///
        return self
    }
    
    ///
    @available(macOS 10.15.0, iOS 13.0, watchOS 6.0.0, tvOS 13.0.0, *)
    @discardableResult
    public func assert(
        condition: @escaping (Self)async throws->Bool
    ) async throws -> Self {
        
        ///
        guard try await condition(self) else {
            throw ErrorMessage("\(self) failed to satisfy condition.")
        }
        
        ///
        return self
    }
}
