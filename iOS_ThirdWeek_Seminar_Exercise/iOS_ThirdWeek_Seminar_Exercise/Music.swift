//
//  Music.swift
//  iOS_ThirdWeek_Seminar_Exercise
//
//  Created by 최인정 on 2020/05/09.
//  Copyright © 2020 indoni. All rights reserved.
//


import UIKit

struct Music {
    var albumImg: UIImage?
    var musicTitle: String
    var singer: String
    
    init(coverName: String, title: String, singer: String) {
        self.albumImg = UIImage(named: coverName)
        self.musicTitle = title
        self.singer = singer
    }
}
