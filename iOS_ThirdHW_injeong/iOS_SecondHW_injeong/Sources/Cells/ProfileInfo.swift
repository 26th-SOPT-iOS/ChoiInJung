//
//  ProfileInfo.swift
//  iOS_SecondHW_injeong
//
//  Created by 최인정 on 2020/05/15.
//  Copyright © 2020 indoni. All rights reserved.
//

import UIKit

struct ProfileInfo{
    var profileImg: ProfileImg
    var nameInfo: String
    var subTitle: String
    
    init(profileImg: ProfileImg, name: String, title: String){
        self.profileImg = profileImg
        self.nameInfo = name
        self.subTitle = title
    }
    
}

enum ProfileImg{
    case img1
    case img2
    case img3
    case img4
    case img5
    case img6
    case img7
    case img8
    case img9
    case img10
    
    func getImageName()->String{
        switch self {
        case .img1:
            return "album_bts"
        case .img2:
            return "album_im"
        case .img3:
            return "album_iu"
        case .img4:
            return "album_loco"
        case .img5:
            return "album_paul"
        case .img6:
            return "album_shaun"
        case .img7:
            return "album_smtm7"
        case .img8:
            return "album_vibe"
        case .img9:
            return "album_yangdail"
        case .img10:
            return "album_ziont"
            
        }
    }
}
