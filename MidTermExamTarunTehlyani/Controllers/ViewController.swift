//
//  ViewController.swift
//  MidTermExamTarunTehlyani
//
//  Created by Default User on 2/13/25.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    @IBAction func UnwindToThisView(sender : UIStoryboardSegue)
    {
        
    }

    var audioPlayer: AVAudioPlayer?
      
       
       func playBackgroundMusic()
       {
           if let path = Bundle.main.path(forResource: "mustard_long", ofType: "mp3")
           {
               let url = URL(fileURLWithPath: path)
               do{
                   audioPlayer = try AVAudioPlayer(contentsOf: url)
                   audioPlayer?.numberOfLoops = -1
                   audioPlayer?.volume = 0.5
                   audioPlayer?.play()
               }
               catch {
                   print("Error playing music: \(error.localizedDescription)")
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        playBackgroundMusic()
        
        // Do any additional setup after loading the view.
    }


}

