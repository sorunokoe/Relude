//
//  TasksUSTests.swift
//  ReludeTests
//
//  Created by Salgara on 11/9/19.
//  Copyright © 2019 Noa. All rights reserved.
//

import XCTest
@testable import Relude

class TasksUSTests: XCTestCase {

    var sut: TasksPresenter!
    var interactor: TasksInteractor!
    
    override func setUp() {
        super.setUp()
        sut = TasksPresenter()
        interactor = TasksInteractor()
        sut.interactor = interactor
        interactor.presenter = sut
    }

    override func tearDown() {
        sut = nil
        interactor = nil
        super.tearDown()
    }
    
    func test_getListOfTasks(){
        sut.loadTasks()
        XCTAssertTrue(!sut.tasks.isEmpty)
    }
    
    
}
