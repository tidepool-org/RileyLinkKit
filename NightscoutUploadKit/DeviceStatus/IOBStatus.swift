//
//  IOBStatus.swift
//  RileyLink
//
//  Created by Pete Schwamb on 7/28/16.
//  Copyright © 2016 Pete Schwamb. All rights reserved.
//

import Foundation
import LoopKit

extension IOBStatus {
    public var dictionaryRepresentation: [String: Any] {

        var rval = [String: Any]()

        rval["timestamp"] = TimeFormat.timestampStrFromDate(timestamp)

        if let iob = iob {
            rval["iob"] = iob
        }

        if let basalIOB = basalIOB {
            rval["basaliob"] = basalIOB
        }

        return rval
    }
}
