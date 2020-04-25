//
//  LoginViewController.swift
//  iOS_FirstHW_injeong
//
//  Created by 최인정 on 2020/04/24.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var idLog: String?
    var pwLog: String?
    
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    
    private func setTextFields(){
        guard let idtext = self.idLog else {return}
        guard let pwtext = self.pwLog else {return}
        
        //textField에 값 대입
        self.idTextField.text = idtext
        self.pwTextField.text = pwtext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTextFields()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backMainScreen(_ sender: Any) {
        
        self.dismiss(animated: true){
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                       (appDelegate.window?.rootViewController as? UINavigationController)?.popToRootViewController(animated:true)
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
