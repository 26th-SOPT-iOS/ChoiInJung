//
//  SOPTmainViewController.swift
//  iOS_FirstHW_injeong
//
//  Created by 최인정 on 2020/04/24.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class SOPTmainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setRound()
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var joinButton: UIButton!
    
    @IBAction func transferLoginData(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "loginViewController") as? LoginViewController else {return}
        
        receiveViewController.idLog = idTextField.text
        receiveViewController.pwLog = pwTextField.text
        
        receiveViewController.modalPresentationStyle = .fullScreen
        
        self.present(receiveViewController, animated: true, completion: nil)
        
        
    }
    
    func setRound() {
        loginButton.layer.cornerRadius = 10;
        joinButton.layer.cornerRadius = 10;
    
        
    }
    
    @IBAction func joinClick(_ sender: Any) {
        
        guard let joinClick = storyboard?.instantiateViewController(withIdentifier: "joinViewController") as? JoinViewController else {
                   return
               }
               
        self.navigationController?.pushViewController(joinClick, animated: true)
        
        
        
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
