//
//  ViewController.swift
//  SKAZKI
//
//  Created by MacBook on 30.09.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var skazka : String = ""
    @IBOutlet weak var teremok: UIButton!
    @IBOutlet weak var kolobok: UIButton!
    @IBOutlet weak var kyrochka: UIButton!
    @IBOutlet weak var masha: UIButton!
    
    
    @IBAction func tapbuttons(_ sender: UIButton) {
    
    
            let tag = sender.tag
    
            if tag == 1{
                skazka = "teremok"
                playSound()
        }
            if tag == 2{
                skazka = "kolobok"
                playSound()
        }
            if tag == 3{
                skazka = "kurochka"
                playSound()
        }
            if tag == 4{
                skazka = "mashenka"
                playSound()
        }
    }
    var player: AVAudioPlayer?
    func playSound() {
        guard let url = Bundle.main.url(forResource: String(skazka), withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)


            guard let player = player else { return }
            player.play()

            }
            catch let error {
            print(error.localizedDescription)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageteremok =  UIImage(named:"teremok")
        teremok.setImage(imageteremok?.withRenderingMode(.alwaysOriginal), for:  UIControl.State.normal)
        teremok.layer.cornerRadius = 10
        
        let imagekolobok =  UIImage(named:"kolobok")
        kolobok.setImage(imagekolobok?.withRenderingMode(.alwaysOriginal), for:  UIControl.State.normal)
        kolobok.layer.cornerRadius = 10
        
        let imagekyrochka =  UIImage(named:"Ryaba")
        kyrochka.setImage(imagekyrochka?.withRenderingMode(.alwaysOriginal), for:  UIControl.State.normal)
        kyrochka.layer.cornerRadius = 10
        
        let imagemasha =  UIImage(named:"masha")
        masha.setImage(imagemasha?.withRenderingMode(.alwaysOriginal), for:  UIControl.State.normal)
        masha.layer.cornerRadius = 10
    }

}

