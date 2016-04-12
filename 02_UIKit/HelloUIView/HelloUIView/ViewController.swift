//********************************************************************
//********************************************************************
//****************************** UIView ******************************
//********************************************************************
//********************************************************************

import UIKit

class ViewController: UIViewController {
    var blueView:UIView!                     //幫類別添加一個 UIView 屬性
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewArea = CGRectMake(50.0,50.0, 100.0, 100.0)//定義一個範圍
        blueView = UIView(frame: viewArea)     //使用範圍來產生一個UIView
        blueView.backgroundColor = UIColor.blueColor()       //設定顏色
        view.addSubview(blueView)                 //把blueView加到畫面上
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    override func viewDidLayoutSubviews() {
        
        print(blueView.frame.origin.x)      //得到視圖的x座標
        print(blueView.frame.origin.y)      //得到視圖的y座標
        print(blueView.frame.size.width)    //得到視圖的寬度
        print(blueView.frame.size.height)   //得到視圖的高度
        print(blueView.center.x)            //得到視圖中心的x座標
        print(blueView.center.y)            //得到視圖中心的y座標
        
        print(CGRectGetMinX(blueView.frame))   //得到視圖最小的x座標值
        print(CGRectGetMinY(blueView.frame))   //得到視圖最小的y座標值
        print(CGRectGetMaxX(blueView.frame))   //得到視圖最大的x座標值
        print(CGRectGetMaxX(blueView.frame))   //得到視圖最大的y座標值
        print(CGRectGetMidX(blueView.frame))   //得到視圖中點的x座標值
        print(CGRectGetMidY(blueView.frame))   //得到視圖中點的y座標值
        print(CGRectGetWidth(blueView.frame))  //得到視圖的寬度
        print(CGRectGetHeight(blueView.frame)) //得到視圖的高度
        
        //設定位置與大小的第一種方法
        blueView.frame.origin.x = 100
        blueView.frame.origin.y = 200
        blueView.frame.size.width = 50
        blueView.frame.size.height = 150
        
        //設定位置與大小的第二種方法
        let newPoint = CGPointMake(100, 200)
        blueView.frame.origin = newPoint
        let newSize = CGSizeMake(50, 150)
        blueView.frame.size = newSize
        
        //設定位置與大小的第三種方法
        let newArea = CGRectMake(100,200, 50, 150)
        blueView.frame = newArea
    }
}



