//
//  Task.swift
//  RKexploration
//
//  Created by James Godwin on 22/04/2015.
//  Copyright (c) 2015 Science Practice. All rights reserved.
//

import Foundation
import ResearchKit

public var fitnessTask: ORKTask {
    return ORKOrderedTask.fitnessCheckTaskWithIdentifier("WalkingTask", intendedUseDescription: "For this task you will need to walk as fast as you can for five minutes ", walkDuration: 300, restDuration: 300, options: nil)
}