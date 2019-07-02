//
//  AppDelegate.swift
//  Menu
//
//  Created by Berk Cetinsaya on 8/25/16.
//  Copyright © 2016 Berk Cetinsaya. All rights reserved.
//

import Cocoa
import ServiceManagement

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var statusMenu: NSMenu!

    let statusItem = NSStatusBar.system.statusItem(withLength: -1)
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true
        statusItem.image=icon
        statusItem.menu=statusMenu
    }
    @IBAction func menuClicked(_ sender: NSMenuItem) {
        let github = Process()
        github.launchPath = "/usr/bin/open"
        github.arguments = ["https://github.com" ]
        github.launch()
        /*
        let task = Process()
        task.launchPath = "/bin/bash"
        if(sender.state==NSControl.StateValue.on){
            sender.state = NSControl.StateValue.off
            task.arguments=["-c", " /usr/bin/defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"]
        }
        else{
            sender.state = NSControl.StateValue.on
            task.arguments=["-c", " /usr/bin/defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"]
        }
        task.launch()
        task.waitUntilExit()
        */
//        let killTask = NSTask()
//        killTask.launchPath = "/bin/bash"
//        killTask.arguments = ["killall Finder"]
//        killTask.launch()
        
    }
    @IBAction func spotifyClicked(_ sender: NSMenuItem) {
        let sp = Process()
        sp.launchPath = "/usr/bin/open"
        sp.arguments = ["https://play.spotify.com" ]
        sp.launch()
        
    }
    @IBAction func bossClicked(_ sender: NSMenuItem) {
        let boss = Process()
        boss.launchPath = "/usr/bin/open"
        boss.arguments = ["https://twitch.com" ]
        boss.launch()
    }
    @IBAction func blackboardClicked(_ sender: NSMenuItem) {
        let bb = Process()
        bb.launchPath = "/usr/bin/open"
        bb.arguments = ["http://blackboard.ualr.edu" ]
        bb.launch()
    }
    @IBAction func netflixClicked(_ sender: NSMenuItem) {
        let netflix = Process()
        netflix.launchPath = "/usr/bin/open"
        netflix.arguments = ["http://netflix.com" ]
        netflix.launch()
    }
    @IBAction func bwebClicked(_ sender: NSMenuItem) {
        let bweb = Process()
        bweb.launchPath = "/usr/bin/open"
        bweb.arguments = ["https://youtube.com" ]
        bweb.launch()
    }
    
    @IBAction func localClicked(_ sender: NSMenuItem) {
        NSWorkspace.shared.launchApplication("GitHub Desktop")
    }
        
    @IBAction func exitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
        
    }
    

}

