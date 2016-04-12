//********************************************************************
//********************************************************************
//********************* Swipe Gesture Recognizer *********************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    
    @IBAction func swipeAction(sender: UISwipeGestureRecognizer) {
        print("just swipe right")
    }
    
    /***** 用程式碼生成UISwipeGestureRecognizer的方法 *****
    //加入屬性
    var mySwipeGestureRecognizer:UISwipeGestureRecognizer!
    
    override func viewDidLoad() {
        //用程式碼生成偵測滑動手勢的UISwipeGestureRecognizer，設定觸發 programSwipe方法。
        mySwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.programSwipe(_:)))
        //設定需要幾根手指觸發滑動事件
        mySwipeGestureRecognizer.numberOfTouchesRequired = 1
        //設定要偵測滑動方向
        mySwipeGestureRecognizer.direction = .Left
        //把偵測滑動手勢的UISwipeGestureRecognizer加到畫面上。
        //事實上可以加到任何的UIView中
        view.addGestureRecognizer(mySwipeGestureRecognizer)
    }
    
    func programSwipe(sender: UISwipeGestureRecognizer) {
        //如果觸發滑動事件執行的程式碼
        if sender.direction == .Up{
            print("Swipe Up")
        }else if sender.direction == .Down{
            print("Swipe Down")
        }else if sender.direction == .Left{
            print("Swipe Left")
        }else if sender.direction == .Right{
            print("Swipe Right")
        }
    }
    */
}


