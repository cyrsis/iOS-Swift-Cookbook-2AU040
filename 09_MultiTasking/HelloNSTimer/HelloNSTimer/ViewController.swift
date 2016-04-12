//********************************************************************
//********************************************************************
//**************************** NSTimer *******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var numberToCount = 0
    var myTimer:NSTimer?
    
    func counting(){
        numberToCount += 1
        timeLabel.text = "\(numberToCount)"
    }
    
    @IBAction func startCounting(sender: UIBarButtonItem) {
        myTimer = NSTimer.scheduledTimerWithTimeInterval(1.0,
           target: self, selector: #selector(ViewController.counting),
                                        userInfo: nil, repeats: true)
    }
    @IBAction func pauseCounting(sender: UIBarButtonItem) {
        myTimer?.invalidate()
    }
    
    @IBAction func reset(sender: UIBarButtonItem) {
        numberToCount = 0
        timeLabel.text = "0"
    }
}

