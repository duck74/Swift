//
//  testIMC2Tests.swift
//  testIMC2Tests
//
//  Created by Koss on 20/01/16.
//  Copyright © 2016 mine. All rights reserved.
//

import XCTest
@testable import testIMC2

class testIMC2Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPesoBajo(){
        let mc:MyIMC = MyIMC()
        mc.peso = 50
        mc.estatura = 1.7
        XCTAssertEqual(mc.IMC(), 17.30, "Correcto Bajo de peso")
    }
    
    func testPesoNormal(){
        let mc:MyIMC = MyIMC()
        mc.peso = 60
        mc.estatura = 1.7
        XCTAssertEqual(mc.IMC(), 20.76, "correcto Peso normal")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
