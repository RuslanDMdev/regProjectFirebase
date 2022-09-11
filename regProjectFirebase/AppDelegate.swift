//
//  AppDelegate.swift
//  regProjectFirebase
//
//  Created by Ruslan Dalgatov on 31.08.2022.
//

import UIKit
import FirebaseCore
import FirebaseAuth

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        Auth.auth().addStateDidChangeListener { auth, user in
            if user == nil {
                
            }
        }
        
        return true
    }
    
    func showModalAuth(){
        
//        let premiumVC = ViewController()
//        self.navigationController?.pushViewController(premiumVC, animated: true)
        
//        let rootVC = ViewController()
//        let nacVC = UINavigationController(rootViewController: rootVC)
//        navigationController?.pushViewController(nacVC, animated: true)
//        nacVC.modalPresentationStyle = .fullScreen
//        present(nacVC, animated: true)
        
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

