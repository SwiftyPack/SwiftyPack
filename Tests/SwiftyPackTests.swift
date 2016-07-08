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
    
    func test_toBin() {
        let rightData = NSData(bytes: [0xCA, 0xFE] as [UInt8], length: 2)
        
        let data = SwiftyPack.toBin(from: "CAFE")
        XCTAssertEqual(data, rightData)
        
        let data2 = SwiftyPack.toBin(from: "cafe")
        XCTAssertEqual(data2, rightData)
        
        let data3 = SwiftyPack.toBin(from: "")
        XCTAssertEqual(data3, NSData())
    }
    
    func test_toHex() {
        let rightHex = "cafe"
        let hex = SwiftyPack.toHex(from: NSData(bytes: [0xCA, 0xFE] as [UInt8], length: 2))
        XCTAssertEqual(hex, rightHex)
        
        let hex1 = SwiftyPack.toHex(from: NSData(bytes: [0xCA, 0xEE] as [UInt8], length: 2))
        XCTAssertEqual(hex1, "caee")
    }
    
}
