//********************************************************************
//********************************************************************
//**************************** LED Opening ***************************
//********************************************************************
//********************************************************************

import UIKit
import AVFoundation     //記得加入AVFoundation

class ViewController: UIViewController {
    var lightStrength:Float = 1.0   //可以在這邊設定亮度
    
    @IBAction func turnOnOrOffTheLight(sender: UISwitch) {
        //畫面上的開關，用來開關手機上的閃光燈
        //得到目前的裝置，存在常數 device
        let device =
        AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        if device.hasTorch == true{
            //如果手機配有閃光燈
            if device.isFlashModeSupported(.On){
                //如果手機支援閃光燈模式
                do {
                    //鎖定device，準備開關閃光燈
                    try device.lockForConfiguration()
                    if sender.on == true{
                        //如果螢幕上開關的狀態是開的話
                        do {
                            //開啟閃光燈
                            try device.setTorchModeOnWithLevel(
                                                        lightStrength)
                        } catch _ {
                        }
                    }else{
                        //如果螢幕上開關的狀態是開的話，關閉閃光燈
                        device.torchMode = .Off
                    }
                } catch _ {
                }
                //閃光燈狀態更改完畢，取消鎖定
                device.unlockForConfiguration()
            }
        }
    }
}

