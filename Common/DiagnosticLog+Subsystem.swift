//
//  DiagnosticLog+Subsystem.swift
//  RileyLink
//
//  Created by Darin Krauss on 6/12/19.
//  Copyright © 2019 Pete Schwamb. All rights reserved.
//

import LoopKit


extension DiagnosticLog {

    convenience init(category: String) {
        self.init(subsystem: "com.ps2.rileylink", category: category)
    }

}
