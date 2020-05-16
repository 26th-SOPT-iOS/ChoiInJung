//
//  MainViewController.swift
//  iOS_SecondHW_injeong
//
//  Created by 최인정 on 2020/05/02.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    var logoImg: UIImage? //이미지를 담는 변수
    @IBOutlet weak var SOPTlogo: UIImageView! //Image View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //이미지 넣는 코드
        logoImg = UIImage(named: "soptLogo@3x.png")
        SOPTlogo.image = logoImg
        
        setRadius()
        setTextField()
        // Do any additional setup after loading the view.
    }
    
    var ismemberlabel: UILabel?
    @IBOutlet weak var ismember: UILabel!
    

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func joinClick(_ sender: Any) {
        guard let joinClick = storyboard?.instantiateViewController(identifier: "joinViewController") as? JoinViewController else { return }
        
        self.navigationController?.pushViewController(joinClick, animated: true)
        
    }
    
    
    
    func setRadius(){
        self.idTextField.layer.cornerRadius = 22
        self.pwTextField.layer.cornerRadius = 22
        loginButton.layer.cornerRadius = 24
        
        self.idTextField.layer.borderWidth = 0.0
        self.pwTextField.layer.borderWidth = 0.0
    }
    
    
    
    func setTextField() {
        
        self.idTextField.attributedPlaceholder = NSAttributedString(string: "    이메일", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        
        self.pwTextField.attributedPlaceholder = NSAttributedString(string: "    비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        
    }
    
    
    @IBAction func login(_ sender: Any) {
        guard let inputID = idTextField.text else { return }
        guard let inputPWD = pwTextField.text else { return }
        
        LoginService.shared.login(id: inputID, pwd: inputPWD) { networkResult in
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
                let alertViewController = UIAlertController(title: "로그인 실패", message: message, preferredStyle: .alert)
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

