//********************************************************************
//********************************************************************
//*************************** Hollow Circle **************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func drawRect(rect: CGRect) {
        let path = CGPathCreateMutable()            //產生路徑
        let largeCircleArea = CGRectMake(50, 50, 300, 300) //設定大圓形範圍
        let smallCircleArea = CGRectMake(100, 100, 200, 200) //設定小圓形範圍
        CGPathAddEllipseInRect(path, nil, largeCircleArea) //加入大圓形範圍
        CGPathAddEllipseInRect(path, nil, smallCircleArea) //加入小圓形範圍
        
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境
        
        CGContextSetLineWidth(context, 10)          //設定邊線粗細
        UIColor.yellowColor().setStroke()           //設定邊線顏色
        UIColor.magentaColor().setFill()            //設定顏色
        CGContextDrawPath(context, .EOFillStroke)   //填色
    }
    
}
