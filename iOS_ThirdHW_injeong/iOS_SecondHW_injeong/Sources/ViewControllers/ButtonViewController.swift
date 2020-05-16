//
//  ButtonViewController.swift
//  iOS_SecondHW_injeong
//
//  Created by 최인정 on 2020/05/02.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setRadius()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var buttonAc: UIButton!
    @IBOutlet weak var buttonMult: UIButton!
    @IBOutlet weak var buttonDiv: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonEqu: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    func setRadius(){
        
        buttonAc.layer.cornerRadius = 33
        buttonMult.layer.cornerRadius = 33
        buttonDiv.layer.cornerRadius = 33
        buttonPlus.layer.cornerRadius = 33
        buttonMinus.layer.cornerRadius = 33
        buttonEqu.layer.cornerRadius = 33
        button9.layer.cornerRadius = 33
        button8.layer.cornerRadius = 33
        button7.layer.cornerRadius = 33
        button6.layer.cornerRadius = 33
        button5.layer.cornerRadius = 33
        button4.layer.cornerRadius = 33
        button3.layer.cornerRadius = 33
        button2.layer.cornerRadius = 33
        button1.layer.cornerRadius = 33
        button0.layer.cornerRadius = 33
        
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
