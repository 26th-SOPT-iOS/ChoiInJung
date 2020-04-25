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

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    
    
    @IBAction func transferLoginData(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "loginViewController") as? LoginViewController else {return}
        
        receiveViewController.idLog = idTextField.text
        receiveViewController.pwLog = pwTextField.text
        
        self.present(receiveViewController, animated: true, completion: nil)
        
        
    }
    
    @IBAction func joinClick(_ sender: Any) {
        
        guard let joinClick = storyboard?.instantiateViewController(withIdentifier: "joinViewController") as? JoinViewController else {
                   return
               }
               
        self.navigationController?.pushViewController(joinClick, animated: true)
        
        
        
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
