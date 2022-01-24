//
//  ViewController.swift
//  Xylophone App
//
//  Created by Aidyn Assan on 24.01.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.titleLabel!.text!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

}

