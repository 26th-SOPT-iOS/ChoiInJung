//
//  ScrollViewController.swift
//  iOS_SecondHW_injeong
//
//  Created by 최인정 on 2020/05/04.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    var BGImg: UIImage? //이미지를 담는 변수
    @IBOutlet weak var SOPTlogoBG: UIImageView! //Image View
    
    var contentImg1: UIImage?
    var contentImg2: UIImage?
    var contentImg3: UIImage?
    var contentImg4: UIImage?
    var contentImg5: UIImage?
    var contentImg6: UIImage?
    var contentImg7: UIImage?
    var contentImg8: UIImage?
    @IBOutlet weak var Img1: UIImageView!
    @IBOutlet weak var Img2: UIImageView!
    @IBOutlet weak var Img3: UIImageView!
    @IBOutlet weak var Img4: UIImageView!
    @IBOutlet weak var Img5: UIImageView!
    @IBOutlet weak var Img6: UIImageView!
    @IBOutlet weak var Img7: UIImageView!
    @IBOutlet weak var Img8: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setImage()
        // Do any additional setup after loading the view.
    }
    

    func setImage(){
        BGImg = UIImage(named: "oursoptBgImg@3x.png")
        SOPTlogoBG.image = BGImg
        
        contentImg1 = UIImage(named: "1.png")
        contentImg2 = UIImage(named: "2.png")
        contentImg3 = UIImage(named: "3.png")
        contentImg4 = UIImage(named: "4.png")
        contentImg5 = UIImage(named: "5.png")
        contentImg6 = UIImage(named: "6.png")
        contentImg7 = UIImage(named: "7.png")
        contentImg8 = UIImage(named: "8.png")
        
        Img1.image = contentImg1
        Img2.image = contentImg2
        Img3.image = contentImg3
        Img4.image = contentImg4
        Img5.image = contentImg5
        Img6.image = contentImg6
        Img7.image = contentImg7
        Img8.image = contentImg8
        
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
