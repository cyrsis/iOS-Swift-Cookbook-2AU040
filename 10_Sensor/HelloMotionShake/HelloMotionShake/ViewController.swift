//********************************************************************
//********************************************************************
//************************** Motion Shake ****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
                                                
        if event?.subtype == .MotionShake{ //如果偵測到的事件是搖晃手機的話
            print("Shaking now")
            
            //如果要在搖晃手機後，跳出警告視窗的話，請參考下面的程式碼
            let shakeAlert = UIAlertController(title: "Shake", message: "Device shaking ended", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "OK", style: .Default, handler: {
                (action:UIAlertAction) -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
            })
            shakeAlert.addAction(okAction)
            presentViewController(shakeAlert, animated: true, completion: nil)
        }
    }
}

