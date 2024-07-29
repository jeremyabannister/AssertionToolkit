//
//  TestConformancesOfFoundationTypesTo_SupportsArbitraryAssertions.swift
//
//
//  Created by Jeremy Bannister on 7/28/24.
//

///
final class TestConformancesOfFoundationTypesTo_SupportsArbitraryAssertions: XCTestCase {
    
    ///
    func test () {
        Array<Double>.proofOfConformanceTo_SupportsArbitraryAssertions()
        Bool.proofOfConformanceTo_SupportsArbitraryAssertions()
        ClosedRange<Date>.proofOfConformanceTo_SupportsArbitraryAssertions()
        Data.proofOfConformanceTo_SupportsArbitraryAssertions()
        Date.proofOfConformanceTo_SupportsArbitraryAssertions()
        DateFormatter.proofOfConformanceTo_SupportsArbitraryAssertions()
        Dictionary<String, Bool>.proofOfConformanceTo_SupportsArbitraryAssertions()
        Dictionary<Bool, Int>.Keys.proofOfConformanceTo_SupportsArbitraryAssertions()
        Dictionary<String, Bool>.Values.proofOfConformanceTo_SupportsArbitraryAssertions()
        Double.proofOfConformanceTo_SupportsArbitraryAssertions()
        Int.proofOfConformanceTo_SupportsArbitraryAssertions()
        JSONDecoder.proofOfConformanceTo_SupportsArbitraryAssertions()
        JSONEncoder.proofOfConformanceTo_SupportsArbitraryAssertions()
        Optional<Bool>.proofOfConformanceTo_SupportsArbitraryAssertions()
        Result<Int, ErrorMessage>.proofOfConformanceTo_SupportsArbitraryAssertions()
        Set<String>.proofOfConformanceTo_SupportsArbitraryAssertions()
        String.proofOfConformanceTo_SupportsArbitraryAssertions()
        TimeZone.proofOfConformanceTo_SupportsArbitraryAssertions()
        UInt.proofOfConformanceTo_SupportsArbitraryAssertions()
        URL.proofOfConformanceTo_SupportsArbitraryAssertions()
        URLComponents.proofOfConformanceTo_SupportsArbitraryAssertions()
        URLRequest.proofOfConformanceTo_SupportsArbitraryAssertions()
        UUID.proofOfConformanceTo_SupportsArbitraryAssertions()
    }
}
