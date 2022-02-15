//
//  NavigationTestingTests.swift
//  NavigationTestingTests
//
//  Created by Nathaniel Whittington on 2/14/22.
//

import XCTest
@testable import NavigationTesting

class NavigationTestingTests: XCTestCase {

   
    var vm : ViewController?
    
    var nav : UINavigationController?
    
    override func setUpWithError() throws {
        let st = UIStoryboard(name: "Main", bundle: nil)
        vm = st.instantiateViewController(identifier: "ViewController") as? ViewController
        nav = UINavigationController(rootViewController: vm!)
        
        vm?.loadViewIfNeeded()
               
    }

    override func tearDownWithError() throws {
        vm = nil
        nav = nil
    }

    func testIfButtonPressed(){
       
        vm?.button1.sendActions(for: .touchUpInside)
        RunLoop.current.run(until: Date())
        
        guard let _ = nav?.topViewController as? SecondViewController else {
            XCTFail()
            return
        }
    }
    
    func test2(){
        
        let spyViewController = SpyViewController(rootViewController: vm!)
        
        vm?.button1.sendActions(for: .touchUpInside)
        
        guard let _ = spyViewController.pushedViewController as? SecondViewController else {
            XCTFail()
            return
        }
        
        
    }

}
