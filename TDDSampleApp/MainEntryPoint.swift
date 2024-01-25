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
        if NSClassFromString("XCTestCase") == nil {
            TDDSampleAppApp.main()
        } else {
            TestApp.main()
        }
    }
}
