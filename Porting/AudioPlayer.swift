//
//  AudioPlayer .swift
//  Porting
//
//  Created by Felipe Petersen on 29/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import Foundation
import AVFoundation

class AudioPlayer: NSObject, AVAudioPlayerDelegate {
     
    var player: AVAudioPlayer?
    
    init(named: String) {
        super.init()
        guard let url = Bundle.main.path(forResource: named, ofType: "m4a") else {
            print("file not found")
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf:URL(fileURLWithPath: url))
            player?.delegate = self

        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func playSound() {
        guard let safePlayer = player else { return }
        safePlayer.play()
    }
}
