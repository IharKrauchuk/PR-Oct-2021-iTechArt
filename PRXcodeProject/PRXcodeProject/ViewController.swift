//
//  ViewController.swift
//  PRXcodeProject
//
//  Created by Ihar Krauchuk on 22.11.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        printValuesFromInfoPlist()
    }

    func printValuesFromInfoPlist() {
        print("App display name: \(Bundle.main.appDisplayName ?? "ERROR")")
        print("App name: \(Bundle.main.appName ?? "ERROR")")
        print("App version: \(Bundle.main.version ?? "ERROR")")
        print("Build number: \(Bundle.main.buildNumber ?? "ERROR")")
        print("---------------")
        print("Second type of getting value from Info.plist\n")
        print("App verrsion: \(Bundle.appVersionString)")
        print("Build version: \(Bundle.appBuildVersionString)")
        print("---------------")
        print("Configuration: \(Bundle.main.configuration)")
        print("Example API key from Info.plist: \(Bundle.main.iKrauchukExampleAPIKey)")
        print("\n---------------")
        print("Values from xcconfig file\n")
        print("Example API key: \(Bundle.main.exampleAPIkeyFromXcconfigFile)")
        print("---------------")
    }

}

