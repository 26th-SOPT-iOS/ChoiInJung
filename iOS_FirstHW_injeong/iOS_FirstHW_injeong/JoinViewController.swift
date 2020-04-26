//
//  JoinViewController.swift
//  iOS_FirstHW_injeong
//
//  Created by 최인정 on 2020/04/24.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {


    @IBAction func joinClick2(_ sender: Any) {
        guard let joinClick2 = storyboard?.instantiateViewController(withIdentifier: "loginViewController") as? LoginViewController else {
            return
        }
        
        joinClick2.modalPresentationStyle = .fullScreen
        
        self.present(joinClick2, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
