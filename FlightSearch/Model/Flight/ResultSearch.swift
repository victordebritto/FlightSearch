//
//  ResultSearch.swift
//  ResultSearch
//
//  Created by Victor Britto e Barros on 03/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation
import ObjectMapper

class ResultSearch: Mappable {
    
    var data: FlightList?
    var lenght: Int?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        data <- map["data"]
        lenght <- map["data_length"]
    }
    
}
