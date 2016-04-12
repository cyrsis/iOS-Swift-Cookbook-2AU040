//********************************************************************
//********************************************************************
//**************************** Draw Shape ****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {

    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()     //取得繪圖情景
        CGContextMoveToPoint(context, 50, 100)     //移到線段的第一個點
        CGContextAddLineToPoint(context, 150, 0)        //畫出第一條線
        CGContextAddLineToPoint(context, 250, 100)      //畫出第二條線
        CGContextAddLineToPoint(context, 200, 100)      //畫出第三條線
        CGContextAddLineToPoint(context, 200, 300)      //畫出第四條線
        CGContextAddLineToPoint(context, 100, 300)      //畫出第五條線
        CGContextAddLineToPoint(context, 100, 100)      //畫出第六條線
        CGContextClosePath(context)                     //關閉路徑
        UIColor.redColor().set()                        //設定顏色
        //CGContextStrokePath(context)                  //畫出線段
        CGContextFillPath(context)                      //填色
    }

}
