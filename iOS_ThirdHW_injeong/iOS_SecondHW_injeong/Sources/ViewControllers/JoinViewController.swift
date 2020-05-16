//
//  JoinViewController.swift
//  iOS_SecondHW_injeong
//
//  Created by 최인정 on 2020/05/03.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {

    
    var logoImgS: UIImage?
    @IBOutlet weak var logoImageJoin: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //이미지 넣는 코드
        logoImgS = UIImage(named: "soptLogo@3x.png")
        logoImageJoin.image = logoImgS
        
        self.setRadius()
        self.setTextField()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
   
    
    
    @IBOutlet weak var joinButton: UIButton!
    
    func setRadius(){
        self.idTextField.layer.cornerRadius = 22
        self.pwTextField.layer.cornerRadius = 22
        self.nameTextField.layer.cornerRadius = 22
        self.emailTextField.layer.cornerRadius = 22
        self.phoneTextField.layer.cornerRadius = 22
        
        
        
        self.joinButton.layer.cornerRadius = 24
        
        
        self.idTextField.layer.borderWidth = 0.0
        self.pwTextField.layer.borderWidth = 0.0
        self.nameTextField.layer.borderWidth = 0.0
        self.emailTextField.layer.borderWidth = 0.0
        self.phoneTextField.layer.borderWidth = 0.0
        
        
    }
    
    func setTextField() {
           
        self.idTextField.attributedPlaceholder = NSAttributedString(string: "    아이디", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
           
        self.pwTextField.attributedPlaceholder = NSAttributedString(string: "    비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        
        self.nameTextField.attributedPlaceholder = NSAttributedString(string: "    이름", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        
        self.emailTextField.attributedPlaceholder = NSAttributedString(string: "    이메일", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        
        self.phoneTextField.attributedPlaceholder = NSAttributedString(string: "    핸드폰번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])

           
       }

    
    @IBAction func signUp(_ sender: Any) {
        guard let inputID = idTextField.text else { return }
        guard let inputPWD = pwTextField.text else { return }
        guard let inputName = nameTextField.text else { return }
        guard let inputEmail = emailTextField.text else { return }
        guard let inputPhone = phoneTextField.text else { return }
        
        SignupService.shared.signup(id: inputID, password: inputPWD, name: inputName, email: inputEmail, phone: inputPhone) { networkResult in
            switch networkResult {
            case .success(let token):
                guard let token = token as? String else { return }
                UserDefaults.standard.set(token, forKey: "token")
                guard let tabbarController = self.storyboard?.instantiateViewController(identifier:
                    "customTabbarController") as? UITabBarController else {return }
                tabbarController.modalPresentationStyle = .fullScreen
                self.present(tabbarController, animated: true, completion: nil)
            case .requestErr(let message):
                guard let message = message as? String else { return }
                let alertViewController = UIAlertController(title: "회원가입 실패", message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
            case .pathErr: print("path")
            case .serverErr: print("serverErr")
            case .networkFail: print("networkFail")
                
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
