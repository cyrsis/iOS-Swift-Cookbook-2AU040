//********************************************************************
//********************************************************************
//************************* Speed Up Music ***************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var myPlayer:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSBundle.mainBundle().pathForResource("Right", ofType: "mp3")
        do {
            myPlayer = try AVAudioPlayer(contentsOfURL: NSURL.fileURLWithPath(path!))
        } catch _ {
            myPlayer = nil
        }
        myPlayer?.enableRate = true //1 設成 true，才可以調整速度
        myPlayer?.rate = 2  //2 用 rate 屬性調整，預設的速度是 1。最慢半速0.5; 最快兩倍速2
    }
    
    @IBAction func playSound(sender: UIButton) {
        myPlayer?.stop()
        myPlayer?.currentTime = 0.0
        myPlayer?.play()
    }
}

