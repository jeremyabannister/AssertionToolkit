//
//  Codable+extensions.swift
//
//
//  Created by Jeremy Bannister on 6/14/24.
//

///
extension Equatable where Self: Codable {
    
    ///
    public func assertRoundTripCoding() throws {
        try JSONDecoder()
            .decode(
                Self.self,
                from: JSONEncoder().encode(self)
            )
            .assertEqual(to: self)
    }
}
