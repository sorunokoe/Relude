//
//  TasksMemoryTests.swift
//  ReludeTests
//
//  Created by Salgara on 11/9/19.
//  Copyright © 2019 Noa. All rights reserved.
//

import XCTest
@testable import Relude

class TasksMemoryTests: XCTestCase {

    var sut: TasksViewProtocol!
    var presenter: TasksPresenter!
    var interactor: TasksInteractor!
    
    override func setUp() {
        super.setUp()
        sut = TasksView()
        presenter = TasksPresenter()
        interactor = TasksInteractor()
        presenter.interactor = interactor
        sut.presenter = presenter
        interactor.presenter = presenter
    }

    override func tearDown() {
        sut = nil
        presenter = nil
        interactor = nil
        super.tearDown()
    }
    

}
