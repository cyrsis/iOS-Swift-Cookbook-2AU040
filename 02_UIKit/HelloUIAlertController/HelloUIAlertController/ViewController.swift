//********************************************************************
//********************************************************************
//************************* Alert Controller *************************
//********************************************************************
    //********************************************************************

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(sender: UIButton) {
        //產生AlertController
        let myAlert = UIAlertController(title: "Hello", message: "How are you", preferredStyle: .Alert)
        //產生第一顆按鈕
        let okAction = UIAlertAction(title: "Fine", style: .Default, handler: {
            (action:UIAlertAction) -> () in
            print("fine")
            self.dismissViewControllerAnimated(true, completion: nil)
        })
        //產生第二顆按鈕
        let cancelAction = UIAlertAction(title: "So So", style: .Default, handler: {
            (action:UIAlertAction) -> () in
            print("so so")
            self.dismissViewControllerAnimated(true, completion: nil)
        })
        //把第一顆按鈕加到警告控制器
        myAlert.addAction(okAction)
        //把第二顆按鈕加到警告控制器
        myAlert.addAction(cancelAction)
        //推出警告控制器
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        /********************* 有文字輸入框的警告控制器 ***********************
        //產生AlertController
        let myAlert = UIAlertController(title: "Hello", message: "Enter your name", preferredStyle: .Alert)
        //產生第一顆按鈕
        let saveAction = UIAlertAction(title: "Save", style: .Default, handler: {
            (action:UIAlertAction) -> () in
            let alertTextField = myAlert.textFields![0] as UITextField
            print(alertTextField.text!)
            self.dismissViewControllerAnimated(true, completion: nil)
        })
        //產生第二顆按鈕
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default, handler: {
            (action:UIAlertAction) -> () in
            self.dismissViewControllerAnimated(true, completion: nil)
        })
        
        //加入文字輸入框
        myAlert.addTextFieldWithConfigurationHandler({
            (textField:UITextField!) -> Void in
            textField.placeholder = "Enter your name here!"
        })
        
        //把第一顆按鈕加到警告控制器
        myAlert.addAction(saveAction)
        //把第二顆按鈕加到警告控制器
        myAlert.addAction(cancelAction)
        //推出警告控制器
        self.presentViewController(myAlert, animated: true, completion: nil)
        */
    }
}

