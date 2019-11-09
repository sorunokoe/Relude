//
//  AppDelegate.swift
//  Relude
//
//  Created by Salgara on 11/9/19.
//  Copyright © 2019 Noa. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: Bundle.main)
        var window = storyboard.instantiateController(withIdentifier: "MainWindow") as! NSWindowController
        let vc = TasksRouter.createModule()
        window.contentViewController = vc
        window.showWindow(self)
    }
    func applicationWillTerminate(_ aNotification: Notification) {
        
    }


}

