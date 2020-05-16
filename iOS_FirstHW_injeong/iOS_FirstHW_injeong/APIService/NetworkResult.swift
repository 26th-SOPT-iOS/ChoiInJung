//
//  NetworkResult.swift
//  iOS_FirstHW_injeong
//
//  Created by 최인정 on 2020/05/16.
//  Copyright © 2020 indoni. All rights reserved.
//

import Foundation


enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
