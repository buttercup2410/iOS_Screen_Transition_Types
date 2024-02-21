//
//  Response.swift
//  Assignment04
//
//  Created by Nishi Mewada on 12/02/24.
//

import Foundation

class Response{
    
    var rname:String?
    var remail:String?
    var rrole:String?
    var reducation:String?
    var rmaritalStatus:String?
    var rliving:String?
    var rincome:String?
    
    init(rname: String? = nil, remail: String? = nil, rrole: String? = nil, reducation: String? = nil, rmaritalStatus: String? = nil, rliving: String? = nil, rincome: String? = nil) {
        self.rname = rname
        self.remail = remail
        self.rrole = rrole
        self.reducation = reducation
        self.rmaritalStatus = rmaritalStatus
        self.rliving = rliving
        self.rincome = rincome
    }
}
