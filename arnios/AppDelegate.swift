//
//  AppDelegate.swift
//  arnios
//
//  Created by Thomsen Wang on 15/6/2021.
//  Copyright © 2021 Personal. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Override point for customization after application launch.
        
        let storyboard = UIStoryboard(name: "TodoMain", bundle: nil)
        
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "ListTodo")
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        
        return true
    }
    
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession,
//                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Application Scene Manifest
//        return UISceneConfiguration(name: "Default Scene", sessionRole: connectingSceneSession.role)
//    }
    
    
    
}
