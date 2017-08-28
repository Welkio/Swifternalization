//
//  SharedExpressionsProcessor.swift
//  Swifternalization
//
//  Created by Tomasz Szulc on 26/07/15.
//  Copyright (c) 2015 Tomasz Szulc. All rights reserved.
//

import Foundation
import XCTest

class SharedExpressionsProcessorTests: XCTestCase {
    
    func testShouldProcessExpressions() {
        let shared = SharedExpressionsProcessor.processSharedExpression("en")
        XCTAssertEqual(shared.count, 9, "")
    }
}
