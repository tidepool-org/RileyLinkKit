//
//  BatteryStatus.swift
//  RileyLink
//
//  Created by Pete Schwamb on 7/28/16.
//  Copyright © 2016 Pete Schwamb. All rights reserved.
//

import Foundation
import LoopKit
import MinimedKit

extension BatteryIndicator {
    public init?(batteryStatus: MinimedKit.BatteryStatus) {
        switch batteryStatus {
        case .low:
            self = .low
        case .normal:
            self = .normal
        default:
            return nil
        }
    }
}

extension LoopKit.BatteryStatus {
    public var dictionaryRepresentation: [String: Any] {
        var rval = [String: Any]()
        
        if let percent = percent {
            rval["percent"] = percent
        }
        if let voltage = voltage {
            rval["voltage"] = voltage
        }

        if let status = status {
            rval["status"] = status.rawValue
        }
        
        return rval
    }
}
