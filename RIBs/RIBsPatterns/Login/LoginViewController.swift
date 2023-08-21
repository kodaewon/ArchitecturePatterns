//
//  LoginViewController.swift
//  RIBsPatterns
//
//  Created by 고대원 on 2020/01/20.
//  Copyright © 2020 고대원. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol LoginPresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class LoginViewController: UIViewController, LoginPresentable, LoginViewControllable {

    weak var listener: LoginPresentableListener?
}
