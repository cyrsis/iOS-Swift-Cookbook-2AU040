//********************************************************************
//********************************************************************
//**************************** Altimeter *****************************
//********************************************************************
//********************************************************************

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var altiLabel: UILabel!
    var altimeter:CMAltimeter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        altimeter = CMAltimeter()      //產生測量高度的altimeter
        let operationQ = NSOperationQueue()
        if CMAltimeter.isRelativeAltitudeAvailable(){   //如果可以使用
            altimeter.startRelativeAltitudeUpdatesToQueue(operationQ, withHandler: {
                (data:CMAltitudeData?, error:NSError?) -> Void in
                print("releative altitude: \(data!.relativeAltitude) meters")
                //如果要顯示在畫面上的話，請參考下面程式碼
                dispatch_async(dispatch_get_main_queue(),{
                    self.altiLabel.text = "\(Int(data!.relativeAltitude))"
                })
            })
        }
    }

    override func viewDidDisappear(animated: Bool) {
        altimeter.stopRelativeAltitudeUpdates()     //停止更新高度資料
    }
}