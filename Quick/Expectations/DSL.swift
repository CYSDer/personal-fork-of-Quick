//
//  DSL.swift
//  Quick
//
//  Created by Brian Ivan Gesiak on 6/6/14.
//  Copyright (c) 2014 Brian Ivan Gesiak. All rights reserved.
//

import Foundation

func expect(actual: Any?, file: String = __FILE__, line: Int = __LINE__) -> Actual {
    return Actual(actual, callsite: Callsite(file: file, line: line))
}

func expect(closure: () -> (Any?), file: String = __FILE__, line: Int = __LINE__) -> ActualClosure {
    return ActualClosure(closure, callsite: Callsite(file: file, line: line))
}
