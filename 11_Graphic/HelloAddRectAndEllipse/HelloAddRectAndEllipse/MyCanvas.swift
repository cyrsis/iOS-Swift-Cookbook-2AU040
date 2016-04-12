//********************************************************************
//********************************************************************
//************************ Rect and Ellipse **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {

    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let rectArea = CGRectMake(50, 50, 100, 100)     //設定方形的區域
        CGContextAddRect(context, rectArea)             //加入方形
        
        let ellipseArea = CGRectMake(50, 200, 100, 100) //設定圓形的區域
        CGContextAddEllipseInRect(context, ellipseArea) //加入圓形
        
        UIColor(red: 0.34,green:0.43,blue:0.68,alpha:1).set()   //設定顏色
        CGContextFillPath(context)
    }

}
