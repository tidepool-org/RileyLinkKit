//
//  PumpStatus.swift
//  RileyLink
//
//  Created by Pete Schwamb on 7/26/16.
//  Copyright © 2016 Pete Schwamb. All rights reserved.
//

import Foundation
import LoopKit

extension PumpStatus {
    public var dictionaryRepresentation: [String: Any] {
        var rval = [String: Any]()
        
        rval["clock"] = TimeFormat.timestampStrFromDate(clock)
        rval["pumpID"] = pumpID

        if let iob = iob {
            rval["iob"] = iob.dictionaryRepresentation
        }

        if let battery = battery {
            rval["battery"] = battery.dictionaryRepresentation
        }
        
        if let suspended = suspended {
            rval["suspended"] = suspended
        }

        if let bolusing = bolusing {
            rval["bolusing"] = bolusing
        }

        if let reservoir = reservoir {
            rval["reservoir"] = reservoir
        }

        if let secondsFromGMT = secondsFromGMT {
            rval["secondsFromGMT"] = secondsFromGMT
        }

        return rval
    }
}
