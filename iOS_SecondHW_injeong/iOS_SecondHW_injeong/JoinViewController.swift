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
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var joinButton: UIButton!
    
    func setRadius(){
        self.nameTextField.layer.cornerRadius = 22
        self.emailTextField.layer.cornerRadius = 22
        self.pwTextField.layer.cornerRadius = 22
        self.joinButton.layer.cornerRadius = 24
        
        self.nameTextField.layer.borderWidth = 0.0
        self.emailTextField.layer.borderWidth = 0.0
        self.pwTextField.layer.borderWidth = 0.0
        
        
        
    }
    
    func setTextField() {
           
        self.nameTextField.attributedPlaceholder = NSAttributedString(string: "    이름", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
           
        self.emailTextField.attributedPlaceholder = NSAttributedString(string: "    이메일", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
        
        self.pwTextField.attributedPlaceholder = NSAttributedString(string: "    비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
           
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
