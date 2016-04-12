//********************************************************************
//********************************************************************
//*********************** Orientation Change *************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orientationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self,selector: "orientationChanged:",name: UIDeviceOrientationDidChangeNotification,object: nil)//設定手機轉向會執行orientationChange
    }

    func orientationChanged(notification:NSNotification){
        //發生轉向後。用下面的程式碼得到目前手機的轉向
        let orientation = UIDevice.currentDevice().orientation
        var orientationResult:String
        switch orientation{        //判斷是哪一種轉向，一共有六種
            case .Portrait:
                orientationResult = "Portait"
            case .PortraitUpsideDown:
                orientationResult = "PortaitUpsideDown"
            case .LandscapeLeft:
                orientationResult = "LandscapeLeft"
            case .LandscapeRight:
                orientationResult = "LandscapeRight"
            case .FaceUp:
                orientationResult = "FaceUp"
            case .FaceDown:
                orientationResult = "FaceDown"
            default:
                orientationResult = "Unknown Direction"
        }
        print("orientation changed: " + orientationResult)
        orientationLabel.text = orientationResult
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return .All
    }
}

