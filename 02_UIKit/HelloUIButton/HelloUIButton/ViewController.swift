//********************************************************************
//********************************************************************
//***************************** UIButton *****************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    @IBAction func buttonPressed(sender: UIButton) {
        print("button pressed")
    }
    
    //用程式碼產生按鈕
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        ***** 以程式碼產生文字按鈕 *****
        let newButton = UIButton(type: .System)        //產生按鈕
        newButton.frame = CGRectMake(200,200,100,50)   //設定按鈕的位置
        newButton.setTitle("Press", forState: .Normal) //設定按鈕上的文字
        //newButton.setTitle("Pressing", forState:  .Highlighted) //設定按鈕按下的文字
        //設定按下按鈕要執行 hitMe 方法
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(newButton)                     //把按鈕加到畫面上
        
        
        ***** 以程式碼產生圖片按鈕 *****
        let newButton = UIButton(type: .Custom)        //產生按鈕
        newButton.frame = CGRectMake(200,200,113,53)   //設定按鈕的位置
        //設定還沒按下按鈕的圖片
        newButton.setImage(UIImage(named: "PlayButton"), forState: .Normal)
        //設定按下按鈕的圖片
        newButton.setImage(UIImage(named: "PlayButtonPressed"), forState: .Highlighted)
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(newButton)//把按鈕加到畫面上
        */
        
    }
    
    func hitMe(button:UIButton){
        print("new button pressed")
    }
}

