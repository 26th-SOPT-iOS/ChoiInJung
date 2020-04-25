//
//  SecondViewController.swift
//  iOS_FirstWeek_Seminar_Exercise
//
//  Created by 최인정 on 2020/04/18.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var name: String?
    var email: String?
    var isOnOff: Bool?
    var frequency: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
        // Do any additional setup after loading the view.
    }
    
    // @IBOutlet weak var nameLabel: UILabel!
    // @IBOutlet weak var emailLabel: UILabel!
    // @IBOutlet weak var switchLabel: UILabel!
    // @IBOutlet weak var frequencyLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var frequencyLabel: UILabel!
    
    @IBAction func backScreen(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    private func setLabels(){
        //Optional Biding
        guard let name = self.name else {return}
        guard let email = self.email else {return}
        guard let isOnOff = self.isOnOff else {return}
        guard let frequency = self.frequency else {return}
        
        //Label에 값 대입
        nameLabel.text = name
        emailLabel.text = email
        switchLabel.text = isOnOff ? "On" : "Off"
        frequencyLabel.text = "\(frequency)"
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
