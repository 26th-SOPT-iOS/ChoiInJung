//
//  ProfileCell.swift
//  iOS_SecondHW_injeong
//
//  Created by 최인정 on 2020/05/15.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {

    static let identifier: String = "ProfileCell"
    
    @IBOutlet weak var ProfileImgView: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setProfileInfo(profileImage: String, name: String, title: String){
        ProfileImgView.image = UIImage(named: profileImage)
        NameLabel.text = name
        subTitleLabel.text = title
        
        ProfileImgView.layer.cornerRadius = 25
    }
    
}
