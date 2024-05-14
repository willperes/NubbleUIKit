//
//  LoginViewData.swift
//  NubbleUIKit
//
//  Created by Willian Peres on 13/05/24.
//

import Foundation

protocol LoginViewDataProtocol {
    var email: String { get set }
    var password: String { get set }
}

struct LoginViewData: LoginViewDataProtocol {
    var email: String = ""
    var password: String = ""
}
