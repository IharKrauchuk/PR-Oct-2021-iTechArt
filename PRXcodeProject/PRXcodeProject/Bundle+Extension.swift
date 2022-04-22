//
//  Bundle+Extension.swift
//  PRXcodeProject
//
//  Created by Ihar Krauchuk on 22.11.21.
//  Copyright © 2021 iKrauchuk. All rights reserved.
//

import Foundation

// ******************************* MARK: - Version

extension Bundle {
    var appDisplayName: String? {
        return object(forInfoDictionaryKey: "CFBundleDisplayName") as? String
    }
    
    var appName: String? {
        return object(forInfoDictionaryKey: "CFBundleName") as? String
    }
    
    var version: String? {
        return object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }
    
    var buildNumber: String? {
        return object(forInfoDictionaryKey: "CFBundleVersion") as? String
    }
    
    /// Different type of getting values from Info.plist
    
    /// Example: 3.10.0
    static let appVersionString: String = { main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "unknown" }()

    /// Example: 9364
    static let appBuildVersionString: String = { main.infoDictionary?["CFBundleVersion"] as? String ?? "unknown" }()
    
}

// ******************************* MARK: - Keys

extension Bundle {
    
    var configuration: String {
        return object(forInfoDictionaryKey: "Configuration") as? String ?? "ERROR"
    }
    
    var iKrauchukExampleAPIKey: String {
        return object(forInfoDictionaryKey: "iKrauchuk_Example_API_Key") as? String ?? "ERROR"
    }
    
    var exampleAPIkeyFromXcconfigFile: String {
        return object(forInfoDictionaryKey: "EXAMPLE_API_KEY_FROM_XCCONFIG") as? String ?? "ERROR"
    }
    
//     MARK: API Keys
//    var APIKeyGimbal: String {
//        return object(forInfoDictionaryKey: "GIMBAL_API_KEY") as! String
//    }
//
//    // MARK: Links
//    var forgotPasswordLink: String {
//        return object(forInfoDictionaryKey: "FORGOT_PASSWORD_LINK") as! String
//    }
}
