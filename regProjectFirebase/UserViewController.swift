//
//  UserViewController.swift
//  regProjectFirebase
//
//  Created by Ruslan Dalgatov on 14.09.2022.
//

import UIKit
import FirebaseAuth
import Firebase

class UserViewController: UIViewController {

    
    private let signOutButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("Log Out", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"bg")!)
        UIGraphicsBeginImageContext(self.view.frame.size)
          UIImage(named: "bg")?.draw(in: self.view.bounds)
          let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
          UIGraphicsEndImageContext()
          self.view.backgroundColor = UIColor(patternImage: image)
        
        
        view.addSubview(signOutButton)
        signOutButton.frame = CGRect(x: 20, y: 150, width: view.frame.size.width-40, height: 50)
        signOutButton.addTarget(self, action: #selector(logOutTapped), for: .touchUpInside)

    }
    
    @objc private func logOutTapped(){
        do {
            try FirebaseAuth.Auth.auth().signOut()
            signOutButton.removeFromSuperview()
            
            let rootVC = ViewController()
            let nacVC = UINavigationController(rootViewController: rootVC)
            nacVC.modalPresentationStyle = .fullScreen
            present(nacVC, animated: true)
        }
        catch {
            print("An error occured")
        }
    }

}
