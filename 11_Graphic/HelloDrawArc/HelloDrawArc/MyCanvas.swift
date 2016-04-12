//********************************************************************
//********************************************************************
//***************************** Draw Arc *****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        CGContextMoveToPoint(context, 250, 150)      //移到線段的第一個點
        CGContextAddArc(context,150,150,100,0,CGFloat(45.0 * M_PI)/180.0,0)
        UIColor.orangeColor().set()                 //設定線段顏色
        CGContextSetLineWidth(context, 5)           //設定線段粗細
        CGContextStrokePath(context)                //畫出線段
    }
}
