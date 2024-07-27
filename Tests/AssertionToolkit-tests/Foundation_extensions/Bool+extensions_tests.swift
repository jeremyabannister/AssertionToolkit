//
//  Bool+extensions_tests.swift
//
//
//  Created by Jeremy Bannister on 6/14/24.
//

///
extension Bool_tests {
    
    ///
    @MainActor
    func test_assertTrue() throws {
        
        ///
        try true.assertTrue()
        try expectError {
            try false.assertTrue()
        }
    }
    
    ///
    @MainActor
    func test_assertFalse () throws {
        
        ///
        try false.assertFalse()
        try expectError {
            try true.assertFalse()
        }
    }
}
