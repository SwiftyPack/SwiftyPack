//
//  SwiftyPack.swift
//  SwiftyPack
//
//  Created by DonYang on 7/7/16. http://github.com/SwiftyPack/
//  The MIT License
//

import Foundation

public func pack(fmt:String, _ any:Any...) -> NSData {
    //TODO
    return NSData()
}

public func unpack(fmt:String, from data:NSData) -> Void {
    //TODO
}

public func calcsize(fmt: String) -> Int {
    //TODO
    return 0
}

public func toHex(from data:NSData) -> String {
    //TODO
    return ""
}

public func toBin(from hexString:String) -> NSData? {
    let data = NSMutableData(capacity: hexString.characters.count / 2)
    let regex = try! NSRegularExpression(pattern: "[0-9a-f]{1,2}", options: .CaseInsensitive)
    regex.enumerateMatchesInString(hexString, options: [], range: NSMakeRange(0, hexString.characters.count)) { match, flags, stop in
        let byteString = (hexString as NSString).substringWithRange(match!.range)
        let num = UInt8(byteString.withCString { strtoul($0, nil, 16) })
        data?.appendBytes([num], length: 1)
    }

    return data
}