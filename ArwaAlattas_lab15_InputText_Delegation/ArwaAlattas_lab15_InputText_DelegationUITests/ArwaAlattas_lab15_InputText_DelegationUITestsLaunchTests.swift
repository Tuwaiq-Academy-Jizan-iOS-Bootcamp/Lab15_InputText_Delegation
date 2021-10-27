//
//  ArwaAlattas_lab15_InputText_DelegationUITestsLaunchTests.swift
//  ArwaAlattas_lab15_InputText_DelegationUITests
//
//  Created by Arwa Alattas on 21/03/1443 AH.
//

import XCTest

class ArwaAlattas_lab15_InputText_DelegationUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
