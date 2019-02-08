//
//  Flight.swift
//  Flight
//
//  Created by Victor Britto e Barros on 03/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation
import ObjectMapper

class Flight: Mappable {
    
    var flightNo: String?
    var origin: String?
    var destination: String?
    var departureTime: Date?
    var arrivalTime: Date?
    var duration: String?
    var stops: String?
    var carrierId: String?
    var airline: String?
    var fare: Fare?
    var returnFlights: [Flight]?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        flightNo <- map["flightno"]
        origin <- map["origin"]
        destination <- map["destination"]
        departureTime <- (map["depdate"], dateTransform)
        arrivalTime <- (map["arrdate"], dateTransform)
        duration <- map["duration"]
        stops <- map["stops"]
        carrierId <- map["carrierid"]
        airline <- map["airline"]
        fare <- map["fare"]
        returnFlights <- map["returnfl"]
    }
    
    let dateTransform = TransformOf<Date, String>(fromJSON: { (value: String?) -> Date? in
        if let value = value {
            return DateHelper.dateFromString(value, format: "yyyy-MM-dd't'HHmm")
        }
        return nil
    }, toJSON: { (value: Date?) -> String? in
        if let value = value {
            return DateHelper.stringFromDate(value, format: "yyyy-MM-dd't'HHmm")
        }
        return nil
    })

}
