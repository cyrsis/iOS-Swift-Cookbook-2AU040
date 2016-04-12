//********************************************************************
//********************************************************************
//***************************** Gyroscope ****************************
//********************************************************************
//********************************************************************

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager = CMMotionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        if motionManager.gyroAvailable{         //檢查陀螺儀是否可用
            let operationQ = NSOperationQueue()
            motionManager.startGyroUpdatesToQueue(operationQ, withHandler: {
                (data:CMGyroData?, error:NSError?) -> Void in
                print("X:\(data!.rotationRate.x)")
                print("Y:\(data!.rotationRate.y)")
                print("Z:\(data!.rotationRate.z)") //拿到陀螺儀資料
                
                //如果要在螢幕顯示陀螺儀資料的話，請參考下面的程式碼
                if data != nil {
                    dispatch_async(dispatch_get_main_queue(),{
                        self.xLabel.text = "\(data!.rotationRate.x)"
                        self.yLabel.text = "\(data!.rotationRate.y)"
                        self.zLabel.text = "\(data!.rotationRate.z)"
                    })
                }
            })
        }
    }
    
    override func viewDidDisappear(animated: Bool) {
        motionManager.stopGyroUpdates()     //停止更新陀螺儀資料
    }
}

