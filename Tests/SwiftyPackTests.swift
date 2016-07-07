//
//  SwiftyPackTests.swift
//  SwiftyPackTests
//
//  Created by DonYang on 7/7/16.
//
//

import XCTest
@testable import SwiftyPack

class SwiftyPackTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_bin() {
        let rightData = NSData(bytes: [0xCA, 0xFE] as [UInt8], length: 2)
        
        let data = SwiftyPack.bin(from: "CAFE")
        XCTAssertEqual(data, rightData)
        
        let data2 = SwiftyPack.bin(from: "cafe")
        XCTAssertEqual(data2, rightData)
        
        let data3 = SwiftyPack.bin(from: "")
        XCTAssertEqual(data3, NSData())

        //TODO
//        let data4 = SwiftyPack.bin(from: "kk")
//        XCTAssertNil(data4)
    }
    
}
