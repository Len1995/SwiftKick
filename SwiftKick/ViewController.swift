//
//  ViewController.swift
//  SwiftKick
//
//  Created by 20063251 on 13/11/2015.
//  Copyright © 2015 20063251. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    var kickSound: SystemSoundID!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createSounds()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createSounds(){
        var soundID: SystemSoundID = 0
        
        var soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "kick", "wav", nil)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        kickSound = soundID
    }
    
    @IBAction func playKick(sender: AnyObject) {
        print("Playing Kick Sound")
        AudioServicesPlaySystemSound(kickSound)
    }

}