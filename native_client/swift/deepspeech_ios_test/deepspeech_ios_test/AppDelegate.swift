//
//  AppDelegate.swift
//  deepspeech_ios_test
//
//  Created by Reuben Morais on 15.06.20.
//  Copyright © 2020 Mozilla. All rights reserved.
//

import UIKit
import deepspeech_ios

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let ptr = DeepSpeech.open(path: Bundle.main.path(forResource: "deepspeech-0.7.4-models", ofType: "tflite")!, scorerPath: Bundle.main.path(forResource: "deepspeech-0.7.4-models", ofType: "scorer"))
        DeepSpeech.test(modelState: ptr, audioPath: Bundle.main.path(forResource: "8455-210777-0068", ofType: "wav")!)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
