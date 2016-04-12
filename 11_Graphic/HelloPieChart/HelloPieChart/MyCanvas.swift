//********************************************************************
//********************************************************************
//**************************** Pie Chart *****************************
//********************************************************************
//********************************************************************

import UIKit

class MyCanvas: UIView {

    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() //取得繪圖情景
        CGContextMoveToPoint(context, 150, 150)     //移到第一個圖形的第一個點
        CGContextAddArc(context,150,150,100,0,CGFloat(300.0 * M_PI)/180.0,0)
        CGContextClosePath(context)         //畫出弧線之後，關閉第一個圖形的路徑
        UIColor.blueColor().set()           //設定填色為藍色
        CGContextFillPath(context)
        CGContextMoveToPoint(context, 150, 150)     //移到第二個圖形的第一個點
        CGContextAddArc(context,150,150,100,0,CGFloat(300.0 * M_PI)/180.0,1)
        CGContextClosePath(context)         //畫出弧線之後，關閉第二個圖形的路徑
        UIColor.magentaColor().set()        //設定填色為粉紅色
        CGContextFillPath(context)
    }

}
