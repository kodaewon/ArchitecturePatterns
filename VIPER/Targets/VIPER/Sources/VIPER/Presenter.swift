//
//  Presenter.swift
//  VIPER
//
//  Created by 고대원 on 2024/01/05.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import Foundation

enum FatchError: Error {
    case failed
}

protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>)
}

class UserPresenter: AnyPresenter {
    var router: AnyRouter?
    var interactor: AnyInteractor?
    var view: AnyView?
    
    init() {
        interactor?.getUsers()
    }
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        switch result {
        case .success(let users):
            view?.update(with: users)
        case .failure(let error):
            view?.update(with: "asdadasdsss")
        }
    }
}
