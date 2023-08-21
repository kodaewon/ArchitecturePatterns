//
//  LoginRouter.swift
//  RIBsPatterns
//
//  Created by 고대원 on 2020/01/20.
//  Copyright © 2020 고대원. All rights reserved.
//

import RIBs

protocol LoginInteractable: Interactable {
    var router: LoginRouting? { get set }
    var listener: LoginListener? { get set }
}

protocol LoginViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
    func push(viewController: ViewControllable)
}

final class LoginRouter: ViewableRouter<LoginInteractable, LoginViewControllable>, LoginRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: LoginInteractable, viewController: LoginViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
    
    private func attachOffLogin() {
        let login = LoginBuilder.build(<#T##self: LoginBuilder##LoginBuilder#>)
    }
}
