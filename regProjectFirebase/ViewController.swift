//
//  ViewController.swift
//  regProjectFirebase
//
//  Created by Ruslan Dalgatov on 31.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let buttonStart = UIButton()
    let labelSingUp = UILabel()
    let emailField = UITextField()
    let passwordField = UITextField()
    let nameField = UITextField()
    let lineView = UIView()
    let lineView2 = UIView()
    let lineView3 = UIView()
    let labelEmail = UILabel()
    let labelPassw = UILabel()
    let labelName = UILabel()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(buttonStart)
        view.addSubview(labelSingUp)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(nameField)
        view.addSubview(labelEmail)
        view.addSubview(labelPassw)
        view.addSubview(labelName)
        view.addSubview(lineView)
        view.addSubview(lineView2)
        view.addSubview(lineView3)

        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"bg")!)
        UIGraphicsBeginImageContext(self.view.frame.size)
          UIImage(named: "bg")?.draw(in: self.view.bounds)
          let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
          UIGraphicsEndImageContext()
          self.view.backgroundColor = UIColor(patternImage: image)
        
        
        let titlecolor = UIColor(displayP3Red: 240/255, green: 105/255, blue: 100/255, alpha: 1)
        let buttoncolor = UIColor(displayP3Red: 247/255, green: 95/255, blue: 106/255, alpha: 1)


        
        labelSingUp.text = "Sing Up"
        labelSingUp.font = UIFont.boldSystemFont(ofSize: 30)
        labelSingUp.snp.makeConstraints { maker in

            maker.top.equalTo(80)
            maker.centerX.equalToSuperview()
        }
        
        labelEmail.text = "Email"
        labelEmail.font = UIFont.boldSystemFont(ofSize: 12)
        labelEmail.textColor = titlecolor
        labelEmail.snp.makeConstraints { maker in
            maker.top.equalTo(labelSingUp).inset(145)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
            
        }
        
        emailField.placeholder = "example@email.com"
        emailField.clearButtonMode = .whileEditing
        emailField.snp.makeConstraints { maker in
            maker.top.equalTo(labelEmail).inset(25)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)

            
        }
        
        lineView.backgroundColor = .gray
        lineView.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(emailField)
            maker.height.equalTo(1)
            maker.bottom.equalTo(emailField).inset(-10)
        }
        
        labelPassw.text = "Password"
        labelPassw.font = UIFont.boldSystemFont(ofSize: 12)
        labelPassw.textColor = titlecolor
        labelPassw.snp.makeConstraints { maker in
            maker.top.equalTo(lineView).inset(45)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)
        }
        
        passwordField.placeholder = "********"
        passwordField.isSecureTextEntry = true
        passwordField.clearButtonMode = .whileEditing
        passwordField.snp.makeConstraints { maker in
            maker.top.equalTo(labelPassw).inset(25)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)

        }
        
        lineView2.backgroundColor = .gray
        lineView2.snp.makeConstraints { maker in
            maker.centerX.equalTo(lineView)
            maker.width.equalTo(300)
            maker.height.equalTo(1)
            maker.bottom.equalTo(passwordField).inset(-10)
        }
        
        labelName.text = "Name"
        labelName.font = UIFont.boldSystemFont(ofSize: 12)
        labelName.textColor = titlecolor
        labelName.snp.makeConstraints { maker in
            maker.top.equalTo(lineView2).inset(45)
            maker.centerX.equalTo(lineView2).inset(0)
            maker.width.equalTo(300)
        }
        
        nameField.placeholder = "Ivan"
        nameField.clearButtonMode = .whileEditing
        nameField.snp.makeConstraints { maker in
            maker.top.equalTo(labelName).inset(25)
            maker.centerX.equalToSuperview()
            maker.width.equalTo(300)

        }

        lineView3.backgroundColor = .gray
        lineView3.snp.makeConstraints { maker in
            maker.centerX.equalTo(lineView2)
            maker.width.equalTo(300)
            maker.height.equalTo(1)
            maker.bottom.equalTo(nameField).inset(-10)
        }
        
        
        
        buttonStart.setTitle("Войти", for: .normal)
        buttonStart.backgroundColor = buttoncolor
        buttonStart.layer.cornerRadius = 5
        buttonStart.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        buttonStart.snp.makeConstraints { maker in
            maker.top.equalTo(nameField).inset(100)
            maker.width.equalTo(300)
            maker.height.equalTo(50)
            maker.centerX.equalToSuperview()
        }
        buttonStart.addTarget(self, action: #selector(openNextView), for: .touchUpInside)

        
    }
    
    
    @objc func openNextView(){
       

//
//        let rootVC = OrderViewController()
//        let nacVC = UINavigationController(rootViewController: rootVC)
//        nacVC.modalPresentationStyle = .fullScreen
//        present(nacVC, animated: true)

        
    }


}

