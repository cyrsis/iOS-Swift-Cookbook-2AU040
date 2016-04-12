//********************************************************************
//********************************************************************
//************************ Proximity Sensor **************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //先把距離感應器的偵測狀態設為開啟
        UIDevice.currentDevice().proximityMonitoringEnabled = true
        if UIDevice.currentDevice().proximityMonitoringEnabled == true{
            //如果距離感應器的狀態真的是開啟，代表運行的機器上有安裝距離感應器...
            NSNotificationCenter.defaultCenter().addObserver(self,
                    selector: #selector(ViewController.proximitySensorStateChange(_:)),
                    name: UIDeviceProximityStateDidChangeNotification,
                    object: nil)
        }
    }
    
    func proximitySensorStateChange(notification:NSNotification){
        print("something approching or leaving")
    }
}

