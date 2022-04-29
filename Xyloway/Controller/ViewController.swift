//
//  ViewController.swift
//  Xyloway
//
//  Created by Nyade on 29/04/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var tune: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func planetPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        tune = try! AVAudioPlayer(contentsOf: url!)
        tune.play()
    }
    
}
