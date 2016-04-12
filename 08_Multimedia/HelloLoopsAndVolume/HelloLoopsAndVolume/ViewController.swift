//********************************************************************
//********************************************************************
//************************ Loop and Volume ***************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var myPlayer:AVAudioPlayer?
    
    @IBAction func playSound(sender: UIButton) {
        myPlayer?.stop()
        myPlayer?.currentTime = 0.0
        myPlayer?.play()
    }
    
    @IBAction func stopPlaying(sender: UIButton) {
        myPlayer?.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("BGM", ofType: "mp3")
        do {
            myPlayer = try AVAudioPlayer(contentsOfURL: NSURL.fileURLWithPath(path!))
        } catch _ {
            myPlayer = nil
        }
        myPlayer?.numberOfLoops = -1 //1 用這個調整Loop，-1是無限循環。
        myPlayer?.volume = 0.8   //2 用這個調整音量。最大1，最小0。
    }
}
