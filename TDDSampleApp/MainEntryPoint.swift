//
//  Main.swift
//  TDDSampleApp
//
//  Created by Rene Valdes on 1/25/24.
//

import Foundation

@main
struct MainEntryPoint {
    
    static func main() {
        if isProduction() {
            TDDSampleAppApp.main()
        } else {
            TestApp.main()
        }
    }
    
    private static func isProduction() -> Bool {
        return NSClassFromString("XCTestCase") == nil
    }
}
