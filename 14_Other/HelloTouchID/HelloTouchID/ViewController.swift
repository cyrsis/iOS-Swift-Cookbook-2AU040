//********************************************************************
//********************************************************************
//***************************** Touch ID *****************************
//********************************************************************
//********************************************************************

import UIKit
import LocalAuthentication  //<----- 記得加入這個

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //使用Touch ID 程式碼，先建立一個LAContext
        let context = LAContext()
        var error:NSError? //稍後認證有錯誤，會把錯誤存在這個屬性
        let reasonString = "請用TouchID認證身份"
        
        if context.canEvaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, error: &error){
            //如果可以支援TouchID的話，繼續執行下面的程式碼：
            context.evaluatePolicy(
                .DeviceOwnerAuthenticationWithBiometrics,
                             localizedReason: reasonString, reply: {
                (success:Bool, error:NSError?) in
                //認證TouchID，結果可能成功可能失敗
                if success{
                    //成功印出認證OK
                    print("認證 OK")
                }else{
                    //失敗依照不同情況處理如下
                    switch error!.code{
                        case LAError.SystemCancel.rawValue:
                            print("認證過程被系統取消")
                        case LAError.UserCancel.rawValue:
                            print("認證過程被系統取消")
                        case LAError.UserFallback.rawValue:
                            print("使用者選擇輸入密碼")
                            //用UIAlterController讓使用者輸入密碼
                            NSOperationQueue.mainQueue().addOperationWithBlock{
                                self.showAlert()
                            }
                        default:
                            //認證失敗，請使用者直接輸入密碼
                            //用UIAlterController讓使用者輸入密碼
                            NSOperationQueue.mainQueue().addOperationWithBlock{
                                self.showAlert()
                            }
                    }
                }
            })
        }
    }
    
    func showAlert(){
        //產生Alert
        let myAlert = UIAlertController(title: "Touch ID 認證",
                    message: "請輸入您的密碼", preferredStyle: .Alert)
        //產生按鈕
        let okAction = UIAlertAction(title: "OK", style: .Cancel) {
            (alertAction) in
            if let myTextField =
                myAlert.textFields?.first as UITextField?{
                if myTextField.text == "ILOVESWIFT"{
                    //如果輸入的密碼是「ILOVESWIFT」，則算輸入正確。
                    //這裡密碼的部分，請依實際狀況更改
                    print("驗證成功")
                }else{
                    print("驗證失敗")
                }
            }
            
        }
        //將按鈕加入到Alert中
        myAlert.addAction(okAction)
        //加Alert加入文字輸入框，讓使用者輸入密碼
        myAlert.addTextFieldWithConfigurationHandler {
            (myTextField:UITextField) in
            //設定文字輸入框的提示文字，與輸入時的安全性
            myTextField.placeholder = "請輸入密碼"
            myTextField.secureTextEntry = true
        }
        //推出警告視窗
        self.presentViewController(myAlert, animated: true,
                                                    completion: nil)
    }
}

