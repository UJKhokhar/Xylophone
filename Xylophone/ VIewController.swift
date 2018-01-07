//
//  ViewController.swift
//  Xylophone
//
//  Created by Khokhar, Umar on 1/6/18.
//  Copyright © 2018 Umar Khokhar. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let selectedSoundFileName = soundArray[sender.tag - 1]
        print(sender.tag)
        print(selectedSoundFileName)
        
        playSound(soundFileName: selectedSoundFileName)
        
    }
    
    func playSound(soundFileName : String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

