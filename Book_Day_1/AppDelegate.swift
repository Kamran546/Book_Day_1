//
//  AppDelegate.swift
//  Book_Day_1
//
//  Created by ITEC on 02/10/2019.
//  Copyright © 2019 ITEC. All rights reserved.
//

import UIKit
import UserNotifications
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("didFinishLaunchingWithOptions")
        
        //NOTIFICATION
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (granted, error) in
        // Here you can check Request is Granted or not.
        }
         let content = UNMutableNotificationContent()
        content.title = "10 Second Notification Demo"
        content.subtitle = "From Wolverine"
        content.body = "Notification after 10 seconds - Your pizza is Ready!!"
        content.categoryIdentifier = "myNotificationCategory"
        
        let trigger = UNTimeIntervalNotificationTrigger(
            timeInterval: 60.0,
            repeats: true)
        let request = UNNotificationRequest(
            identifier: "10.second.message",
            content: content,
            trigger: trigger
        )
       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        //END OF NOTIFICATION
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        print("connectingSceneSession")
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
        print("configurationForConnecting")
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

