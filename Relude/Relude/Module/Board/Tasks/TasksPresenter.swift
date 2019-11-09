//
//  TasksPresenter.swift
//  Relude
//
//  Created by Salgara on 11/9/19.
//  Copyright © 2019 Noa. All rights reserved.
//

import AppKit

class TasksPresenter: TasksPresenterProtocol, TasksInteractorOutputProtocol{
    
    weak private var view: TasksViewProtocol?
    var interactor: TasksInteractorInputProtocol?
    let router: TasksWireframeProtocol
    
    var tasks: [Task] = []
    
    init(view: TasksViewProtocol, interactor: TasksInteractorInputProtocol, router: TasksRouter){
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func addTask(_ index: Int) {
        
    }
    
    func removeTask(_ index: Int) {
        
    }
    
    func editTask(_ index: Int) {
        
    }
    
    func loadTasks() {
        
    }
    
    func didLoadTasks(tasks: [Task]) {
        
    }
    
}
