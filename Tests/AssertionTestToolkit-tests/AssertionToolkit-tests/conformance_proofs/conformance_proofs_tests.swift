//
//  conformance_proofs_tests.swift
//  
//
//  Created by Jeremy Bannister on 7/28/24.
//

///
extension SupportsArbitraryAssertions_tests {
    
    ///
    func proofOfExistenceOf_proofOfConformanceTo_SupportsArbitraryAssertions() {
        func imagine<T: SupportsArbitraryAssertions>(t: T) {
            t.proofOfConformanceTo_SupportsArbitraryAssertions()
            T.proofOfConformanceTo_SupportsArbitraryAssertions()
        }
    }
}
