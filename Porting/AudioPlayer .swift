//
//  AudioPlayer .swift
//  Porting
//
//  Created by Felipe Petersen on 29/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import Foundation
import AVFoundation

struct AudioPlayer {
    
    
    static func playSound(named: String) {
        var player: AVAudioPlayer?
        
        guard let url = Bundle.main.path(forResource: named, ofType: "m4a") else {
            print("file not found")
            return
            
        }
        
        do {
            //            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            //            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf:URL(fileURLWithPath: url))
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            
        } catch let error {
            print(error.localizedDescription)
        }
        
        guard let safePlayer = player else { return }
        
        safePlayer.play()
        
    }
}
