//********************************************************************
//********************************************************************
//**************************** Dash Line *****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()     //取得繪圖情景
        CGContextMoveToPoint(context, 50, 150)       //移到線段的第一個點
        CGContextAddLineToPoint(context, 250, 150)       //畫出一條線
        CGContextSetLineDash(context, 0, [10,20], 2)    //設定虛線
        CGContextSetLineWidth(context, 5)               //設定線段粗細
        //CGContextSetLineDash(context, 0, [5,10,10,10], 4)
        UIColor.redColor().set()                        //設定線段顏色
        CGContextStrokePath(context)                    //畫出線段
    }
}