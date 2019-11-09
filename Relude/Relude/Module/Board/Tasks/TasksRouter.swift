//
//  TasksRouter.swift
//  Relude
//
//  Created by Salgara on 11/9/19.
//  Copyright © 2019 Noa. All rights reserved.
//

import AppKit

class TasksRouter: TasksWireframeProtocol{
    
    var viewController: NSViewController?
    
    static func createModule() -> NSViewController{
        let storyboard = NSStoryboard(name: NSStoryboard.Name("TasksViewController"), bundle: Bundle.main)
        guard let vc = storyboard.instantiateController(withIdentifier: "TasksViewController") as? TasksViewController else{
            return NSViewController()
        }
        let router = TasksRouter()
        let interactor = TasksInteractor()
        let presenter = TasksPresenter(view: vc, interactor: interactor, router: router)
        
        vc.presenter = presenter
        interactor.presenter = presenter
        router.viewController = vc
        
        return vc
    }
}
