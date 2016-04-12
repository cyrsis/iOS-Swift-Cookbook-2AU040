//********************************************************************
//********************************************************************
//************************* Draw Curve Line **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        CGContextMoveToPoint(context, 50, 150)      //移到線段的第一個點
        //用CGContextAddCurveToPoint 畫曲線
        CGContextAddCurveToPoint(context, 100, 0, 200, 300, 250, 150)
        UIColor.blueColor().set()                   //設定線段顏色
        CGContextStrokePath(context)                //畫出線段
    }
}
