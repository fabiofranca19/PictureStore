//
//  RegisterViewController.swift
//  PictureStore
//
//  Created by Fábio França on 12/08/20.
//  Copyright © 2020 music.com.chama. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var passwordImageCheck: UIImageView!
    @IBOutlet weak var confirmPasswordImageCheck: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTF.addTarget(self, action: #selector(textFieldWasEditing), for: .editingChanged)
        confirmPasswordTF.addTarget(self, action: #selector(textFieldWasEditing), for: .editingChanged)
    }
    
    @objc func textFieldWasEditing(_ textField: UITextField) {
        guard let password = passwordTF.text else { return }
        
        if textField == confirmPasswordTF {
            self.passwordImageCheck.isHidden = false
            self.confirmPasswordImageCheck.isHidden = false
        }else{
            if password.isEmpty {
                self.passwordImageCheck.isHidden = true
                self.confirmPasswordImageCheck.isHidden = true
                self.confirmPasswordTF.text = ""
            }
        }
        
        if passwordTF.text == confirmPasswordTF.text {
            self.passwordImageCheck.image = UIImage(named: "green_check")
            self.confirmPasswordImageCheck.image = UIImage(named: "green_check")
        }else{
            self.passwordImageCheck.image = UIImage(named: "red_check")
            self.confirmPasswordImageCheck.image = UIImage(named: "red_check")
        }
    }
    
    @IBAction func registerBtnClicked(_ sender: Any) {
        guard let email = emailTF.text, email.isNotEmpty(),
            let password = passwordTF.text, password.isNotEmpty() else{return}
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if let error = error {
                debugPrint(error.localizedDescription)
                return
            }
            print("deu")
        }
    }
}


