//********************************************************************
//********************************************************************
//**************************** Add Shadow ****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {
    
    override func drawRect(rect: CGRect) {
        let path = CGPathCreateMutable()            //產生路徑
        let rectArea = CGRectMake(50, 50, 200, 100) //設定方形範圍
        CGPathAddRect(path, nil, rectArea)          //加入方形到路徑中
        let context = UIGraphicsGetCurrentContext() //得到繪圖情境
        CGContextAddPath(context, path)             //把路徑加入繪圖情境
        
        UIColor.magentaColor().setFill()            //設定顏色
        CGContextSetShadowWithColor(
            context,
            CGSizeMake(10,10),
            20,
            UIColor.lightGrayColor().CGColor)
        CGContextFillPath(context)                  //填色
    }
    
}
