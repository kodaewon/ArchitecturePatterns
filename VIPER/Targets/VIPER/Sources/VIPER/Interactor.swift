//
//  Interactor.swift
//  VIPER
//
//  Created by 고대원 on 2024/01/05.
//  Copyright © 2024 tuist.io. All rights reserved.
//

import Foundation

// ref to presenter

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
}

class UserInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func getUsers() {
        guard let url = URL(string: "") else { return }
        let task = URLSession.shared.dataTask(with: url, completionHandler: { [weak self] (data, response, error) in
            guard let data = data, error == nil else {
                self?.presenter?.interactorDidFetchUsers(with: .failure(FatchError.failed))
                return
            }
            
            do {
                let entities = try JSONDecoder().decode([User].self, from: data)
                self?.presenter?.interactorDidFetchUsers(with: .success(entities))
                
            } catch let error {
                self?.presenter?.interactorDidFetchUsers(with: .failure(error))
            }
        })
        
        task.resume()
    }
}
