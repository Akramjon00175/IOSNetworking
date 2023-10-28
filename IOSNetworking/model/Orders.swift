//
//  Orders.swift
//  IOSNetworking
//
//  Created by Akramjon on 31/10/23.
//

import Foundation

struct Orders1 : Decodable {
    
    var orders: [Orders2]?

}

struct Orders2: Decodable {
    
    var orderno: String?
    var date: String?
    var trackingno: String?
    var custid: String?
    var customer: [Customer]?
}

struct Customer: Decodable {
    
    var custid : String?
    var fname: String?
    var lname: String?
    var address: String?
    var city: String?
    var state: String?
    var zip: String?
    
}
