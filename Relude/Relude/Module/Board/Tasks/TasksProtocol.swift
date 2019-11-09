//
//  TasksProtocol.swift
//  Relude
//
//  Created by Salgara on 11/9/19.
//  Copyright © 2019 Noa. All rights reserved.
//

import Foundation

protocol TasksWireframeProtocol{
    
}
protocol TasksViewProtocol: class{
    var presenter: TasksPresenterProtocol? { get set }
}
protocol TasksPresenterProtocol: class{
    var interactor: TasksInteractorInputProtocol? { get set }
    
    func addTask(_ index: Int)
    func removeTask(_ index: Int)
    func editTask(_ index: Int)
    func loadTasks()
}
protocol TasksInteractorInputProtocol: class{
    var presenter: TasksInteractorOutputProtocol? {get set }
    
    func getTasks()
    func addTask(_ task: Task)
    func removeTask(_ task: Task)
    func editTask(_ task: Task)
}
protocol TasksInteractorOutputProtocol: class{
    func didLoadTasks(tasks: [Task])
}
