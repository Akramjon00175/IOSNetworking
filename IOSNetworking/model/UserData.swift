//
//  UserData.swift
//  IOSNetworking
//
//  Created by Akramjon on 30/10/23.
//

import Foundation

struct UserData: Decodable {
    
    var Time: String?
    var Uptime: String?
    var Vcc: Int?
    var POWER: String?
    var Wifi: [Wifi]?
    
    
}

struct Wifi: Decodable {
    
    var AP: Int?
    var SSId: String?
    var RSSI: Int?
    var APMac: String?
    
}
