//********************************************************************
//********************************************************************
//************************** Dispatch Once ***************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    var dispatchOnceToken:dispatch_once_t = 0
    var alreadyExcuteTime = 0
    
    func runThisCode(){
        alreadyExcuteTime += 1
        print("Running Code,Time:\(alreadyExcuteTime)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dispatch_once(&dispatchOnceToken, runThisCode)
        dispatch_once(&dispatchOnceToken, runThisCode)
    }
}

