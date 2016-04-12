//********************************************************************
//********************************************************************
//************************ Repeat Vidio Clip *************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    var videoPlayer:AVPlayer!
    
    @IBAction func playVideo(sender: UIButton) {
        let videoURL = NSBundle.mainBundle().URLForResource("HipHop", withExtension: "mp4")
        videoPlayer = AVPlayer(URL: videoURL!)
        let videoPlayerController = AVPlayerViewController()
        videoPlayerController.player = videoPlayer
        self.presentViewController(videoPlayerController, animated: true, completion: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.playerDidReachEnd(_:)), name: AVPlayerItemDidPlayToEndTimeNotification, object: videoPlayer.currentItem) //1
        videoPlayer.play()
    }
    
    func playerDidReachEnd(notification:NSNotification){
        let playerItem = notification.object as! AVPlayerItem
        playerItem.seekToTime(kCMTimeZero)
        videoPlayer.play() //2
    }
    
    /* 移除重複播放用 removeObserver就好了，程式碼於下：
    NSNotificationCenter.defaultCenter().removeObserver(self, name: AVPlayerItemDidPlayToEndTimeNotification, object: videoPlayer.currentItem)
    */
}