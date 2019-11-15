//
//  data.swift
//  testWork3
//
//  Created by кирилл корнющенков on 12/11/2019.
//  Copyright © 2019 кирилл корнющенков. All rights reserved.
//

import Foundation


struct datas: Decodable {
    var type:String
    var value: [jokes]
}

struct jokes: Decodable {
    var id: Int
    var joke:String
}
