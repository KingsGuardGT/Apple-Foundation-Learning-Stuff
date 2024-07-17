//
//  SettingViewController.swift
//  Space Adventure of Lennox
//
//  Created by Foundation-023 on 26/06/24.
//

import UIKit
import AVFoundation

class SettingViewController: UIViewController {
    
    
    @IBOutlet weak var pausePlayButton: UIButton!
    var playerVideo: AVPlayer?
    var isPause = false
    var videoLayer: AVPlayerLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo()
        // Do any additional setup after loading the view.
    }
    func playVideo(){
        guard let videoLocation = Bundle.main.path(forResource: "imThirteen", ofType:"mp4")else {
            return
        }
        playerVideo = AVPlayer(url: URL(fileURLWithPath: videoLocation))
        videoLayer = AVPlayerLayer(player: playerVideo)
        videoLayer.frame = CGRect(x: 130, y: -90, width: 600, height: 600)
        view.layer.addSublayer(videoLayer)
        playerVideo?.play()
    }

    
    @IBAction func pausePlayButton(_ sender: Any) {
        if !isPause{
            pausePlayButton.setTitle("Play", for: .normal)
            isPause = true
            playerVideo?.pause()
        } else {
            pausePlayButton.setTitle("Pause", for: .normal)
            isPause = false
            playerVideo?.play()
        }
    }
    @IBAction func backHome(_ sender: Any) {
        dismiss(animated: true)
    }
}
