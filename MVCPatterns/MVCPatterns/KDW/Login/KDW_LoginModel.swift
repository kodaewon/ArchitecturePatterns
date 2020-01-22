//
//  KDW_LoginModel.swift
//  MVCPatterns
//
//  Created by 고대원 on 2020/01/20.
//  Copyright © 2020 고대원. All rights reserved.
//

import Foundation

struct KDW_LoginModel {
    
    init() {
        
    }
    
   internal func checkEmailValid(_ email: String) -> Bool {
       return email.contains("@") && email.contains(".")
   }
   
   internal func checkPasswordValid(_ password: String) -> Bool {
       return password.count > 4
   }
}
